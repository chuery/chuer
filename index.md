---
layout: default
title: Home
---

<div style="text-align: center; margin-top: 20px;">
  Hi! I'm Chuer, a junior at Stanford interested in tech in sustainability & social impact.
</div>

<!-- First image-text pair -->
<div style="display: flex; align-items: flex-start; max-width: 700px; gap: 20px; margin-bottom: 2rem;">
  <img src="{{ '/assets/dymaxion.jpg' | relative_url }}" alt="Dymaxion Map" style="width: 300px; flex-shrink: 0;">

  <p style="flex: 1; margin: 0;">
    Otherwise this stone would seem defaced<br />
    beneath the translucent cascade of the shoulders<br />
    and would not glisten like a wild beast’s fur:<br />
    would not, from all the borders of itself,<br />
    burst like a star: for here there is no place<br />
    that does not see you. <em>You must change your life.</em><br />
    – Rainer Maria Rilke, <em>Archaic Torso of Apollo</em>
  </p>
</div>

<!-- Second image-text pair -->
<div style="display: flex; align-items: flex-start; max-width: 700px; gap: 20px;">
  <img src="{{ '/assets/communesdome.jpg' | relative_url }}" alt="Communes Dome" style="width: 300px; flex-shrink: 0;">

  <p style="flex: 1; margin: 0;">
    “Live! Live the wonderful life that is in you! Let nothing be lost upon you. <em>Be always searching for new sensations.</em> Be afraid of nothing.”<br />
    ― Oscar Wilde, <em>The Picture of Dorian Gray</em>
  </p>
</div>

<!-- Goodreads Widget -->
<style>
#gr_updates_widget{
border-radius: 5px;
background-color:#fff;
border:solid #683205 10px;
-webkit-box-shadow: 0px 0px 4px 1px #595959,
inset 0px 0px 0px 1px #7D730B;
-moz-box-shadow: 0px 0px 4px 1px #595959,
inset 0px 0px 0px 1px #7D730B;
box-shadow: 0px 0px 4px 1px #595959,
inset 0px 0px 0px 1px #7D730B;
padding:15px 0 35px 15px;
width:250px;
height:330px;
}
#gr_footer{
margin-bottom:10px;
}
#gr_updates_widget p{
padding:0px;
margin:0;
font-size:14px;
}
#gr_footer img{
width:100px;
float:left;
}
#gr_updates_widget img{
    border-style:none;
}
</style>
<div id="gr_updates_widget">
  <iframe sandbox id="the_iframe" src="https://www.goodreads.com/widgets/user_update_widget?height=400&num_updates=3&user=112232536&width=250" width="248" height="330" frameborder="0"></iframe>
  <div id="gr_footer">
    <a href="https://www.goodreads.com/"><img alt="Goodreads: Book reviews, recommendations, and discussion" rel="nofollow" src="https://s.gr-assets.com/images/layout/goodreads_logo_140.png" /></a>
  </div>
</div>
