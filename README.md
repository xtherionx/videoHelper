<h1>videoHelper</h1>


Put a video in fullscreen landscape mode, you need to add the MediaPlayer framework to your app

<h2>How to use</h2>

<ol>
<li>Add the library to your project and import in your ViewController "videoHelper.h"</li>
<li>Create a property in your header: <br />
@property videoHelper *video </li>
<li> In the ViewController body init the property and then pass the object and the video name: <br />
video = [[videoHelper alloc]initWithFormat:@"mp4"]; <br />
[video putVideoInViewcontroller:self andVideo:@"video_1"];  <br />
</li>

</ol>

<h3>Add a button over the video</h3>

To add a custom button over the video add the image file to your app bundle, and call:

[video putButtonOverVideo:@"videoName.png" inX:100 andY:120];
