{
  "title": "Dum-E: a 2x2x2 Rubik's Cube Solver",
  "date": "2020-02-11T12:00:00-05:00",
  "image": "/img/RubiksLogo.png",
  "link": "https://www.olin.edu/news-events/2020/three-olin-teams-win-top-prizes-makeharvard-2020/",
  "description": "For our MakeHarvard creation, Olivia Jo Bradley, Maya Sivanandan, Florian Schwarzinger, and I decided to create, in our 24 hours, an automatic 2x2x2 Rubiks Cube solver.",
  "tags": ["Arduino", "Python", "MakeHarvard", "MakeHarvard Original", "Make-a-thon"],
  "fact": "",
  "featured":true
}
[![DUM-E Video](http://img.youtube.com/vi/e7CE5B1t01g/0.jpg)](http://www.youtube.com/watch?v=e7CE5B1t01g "DUM-E")
For our MakeHarvard creation, Olivia Jo Bradley, Maya Sivanandan, Florian Schwarzinger, and I decided to create, in our 24 hours, an automatic 2x2x2 Rubiks Cube solver. The difference between this and a normal Rubik's cube solver is the fact that a 2x2x2 Rubik's cube cant be held by the center pieces to turn the sides of the cube the way normal cubes are held, meaning it has to be free to twist and turn during it being solved. We all designed the structure during the start of our Make-a-thon and while Olivia Jo and Maya built it, I created the code that told our machine (which we called Dum-E as a callback to Iron Man) how to scan the cube and create a string that represents its state. Then, this string would be sent to a script that Florian created, which will return another string that signifies the set of steps needed to solve it, which my code would decode and tell Dum-E how to perform.
