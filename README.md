# CoreMLImageProcessSample


It is is sample to process different  places Images  background 

It detect the places  of  Images background . 

![coremlimageprocess](https://user-images.githubusercontent.com/8588641/40041809-f17fb988-583c-11e8-8fbe-dfd6f7019f9d.gif)

#### To work with it, Kindly Follow the below steps 

1. Take Single View controller Template while Create project 
2. Design Images view as shown in the preview. 
3. Add Gesture recognition for each Image and give connection with view controller 
4. Add Core ML Places205-GoogLeNet  model into Xcode project by drag and drop . Kindly download this model by using the link :  https://developer.apple.com/machine-learning/
5.  Add ImageProcessor.swift class into your project. Because To  process the image data . Core ML model required data in CVPixelBuffer format. This class  has methods to convert Image data to CVPixelBuffer format. 
6. Follow up the ViewController class coding.  Apply Core ML predicate methods to get back the Place type based on supply Image. 
7.  Here , We must note that , It allows Image with sizes 224* 224 size. It could vary based on different ML models. for this model , Just supply images with 224*224 sizes. 
8. We can observer the Place type string in Label when touch on image. 




## Supporting links: 

Tap Gesture Recogniser. 
https://www.raywenderlich.com/162745/uigesturerecognizer-tutorial-getting-started

Video :  https://www.youtube.com/watch?v=NNKPbdT9gXU

Core ML model :  https://developer.apple.com/machine-learning/

Image Data to CVPixelBuffer  : https://github.com/brianadvent/UIImage-to-CVPixelBuffer



## Copyright
Copyright 2018 Viswanath Reddy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


 


