#Asa Hayes
#created for Project 4 of nand2tetris, specifically aggie.asm 
#function is to draw the letters 'ATM' from a bmp I made in 
#Paint, but this sould work with any properly sized bitmap

#NOTE: This code has an error with how registers are handled, 
#so while the area and picture instructions are created, the
#arrangement is imperfect.

import os
import io
from PIL import Image, ImageOps
import numpy as np

#open image in grayscale mode
img = Image.open('ATM.bmp').convert('L')
#invert image, convert to array, set all nonzero bits to 1 to remove bit depth and ensure proper binary
img_inverted = ImageOps.invert(img)
np_img = np.array(img_inverted)
np_img[np_img > 0] = 1

#np_img is now a 2d array ([256][512]) of all bits, either 1 or 0

#newArr is a reformatted container that better groups bits into workable registers
newArr = np.zeros((256,32,16), dtype=np.int)

#copy contents of np_img into newArr
colCount=0
for i in range(256):
  for j in range(32):
    for k in range(16):
      newArr[i][j][k] = np_img[i][colCount]
      colCount+=1
  colCount=0   
  
file0 = open('binShow.txt', 'w')
for i in range(256):
  for j in range(32):
    for k in range(16):
      file0.write( str(newArr[i][j][k]) )
  file0.write("\n")    
file0.close()
  
file = open('bmpInstruct.txt', 'w')

#loops thru newArr register by register, checks if there are any bits as to cut down on pointless
#instructions, writes formatted text string to file
for i in range(256):
  for j in range(32):
    regIndex = 16384 + 32 * i + j
    #creates string with all binary digits, convert bin to dec to get proper format
    tempInt = int( "".join( map(str, newArr[i][j]) ),2 )
    if tempInt > 0:
      #prevent overflow, as max address is 32767
      if tempInt > 32767:
        file.write("\t@" + str(32767) + "\n")
        file.write("\tD=A\n")
        file.write("\t@" + str(tempInt - 32767) + "\n")
        file.write("\tD=D+A\n")
      else:
        file.write("\t@" + str(tempInt) + "\n")
        file.write("\tD=A\n")
      file.write("\t@" + str(regIndex) + "\n")
      file.write("\tM=D\n")

file.close()