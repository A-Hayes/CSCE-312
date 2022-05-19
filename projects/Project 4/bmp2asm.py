#created for Project 4 of nand2tetris, specifically the extra 
#asm not listed on site to draw the letters 'ATM', but this 
#could work with any properly sized bitmap
import os
import io
from PIL import Image, ImageOps, BmpImagePlugin
import numpy as np
from numpy import asarray

#open and invert image
img = Image.open('ATM.bmp').convert('1')
pix = img.load()

print(pix[130,56])
print(pix[121,252])

#os.remove("bmpInstruct.txt")
#file = open('bmpInstruct.txt', 'w')
#
#regCounter = 16384
#tempArr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
#tempStr = ""
#colCount = 0
#for i in range(256):
#  for j in range(32):
#    for k in range(16):
#      tempArr[k] = img[i,colCount]
#      tempStr += str(img[i,colCount])
#      colCount+=1
#    decOut = bin(tempStr)
#    file.write("\t@" + tempStr + "\n")
#    file.write("\tD=A\n")
#    file.write("\t@" + str(regCounter) + "\n")
#    file.write("\tM=D\n")
#    tempStr = ""
#    regCounter+=1
#  colCount=0
#
#file.close()


