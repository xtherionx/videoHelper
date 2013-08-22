<h1>videoHelper</h1>


Put a video in fullscreen landscape mode

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
