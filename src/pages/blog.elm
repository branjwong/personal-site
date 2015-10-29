-- http://getbootstrap.com/examples/blog/

module Blog where

import Html exposing (..)
import Html.Attributes exposing (..)

import TopBar
import Centre


port title: String
port title =
  "Brandon's Blog"

type alias Model =
  { currentPage : String
  }

model : Model
model =
  { currentPage = "Blog"
  }

-- VIEW

crossGame = """

# Cross Game

### July-13-12: 12:47pm

I finished Cross Game yesterday. Sam had suggested it to me. I'm surprised how heavily Sam's invested himself into anime. It's awesome having a close friend in real life I can talk to anime. David and Samarth have gotten into it too, it's awesome.

Being a sports anime, I was kind of iffy about starting it before. I put it off for awhile. When Sam suggested it, I was like, "hey I recognize that name, if you say it's good, I guess I'll give it a shot." Man, am I glad I did.

#### Synopsis:

Cross Game started very strong.
At first they introduced us to two very important characters: Kou, the protragonist, and his childhood friend, Wakaba. Despite having only 20min to work with, Wakaba's character captivated all of us (David, Samarth, Sam and I). She was very likable to begin with, she appeared to be strong and kind right from the get-go. We see that she is interested in Kou as more than a friend, despite them only being in the 5th grade. We're also introduced to Aoba, the main heroine of the story, and Akaishi, his best friend.
They kill off Wakaba in the first episode.
After building up Wakaba to be such a likable character, she dies, and the first episode ends with both Kou and Akaishi crying about losing someone they both loved. They play it off brilliantly. Kou wanders around the Summer Festival (that him and Wakaba were supposed to attend together after she got back from the swimming camp that ended up being her demise) wondering what to do with himself, and only after seeing Akaishi preying for her and crying, does he realize that all he can really do right now is cry as well.
The second episode resumes some 6 years after that summer, and the story revolves around Kou, Aoba, Akaishi (to a lesser extent), and the people they meet through baseball.
This isn't the first story I've done a review for for nothing. Despite this being a 50 episode long anime, I was enthralled for the whole ride. While the story is mostly character driven, the plot serves as a great device for character development. Even though I'm not a huge fan of baseball, they made enjoyable for people on either side of that scale, i.e.: Brandon to David (with regards to their level of understanding/passion for baseball). While perhaps I would have been happy with less baseball, that's only a personal preference, and in no way should be a fault to the show.
10/10

#### Characters:

First off, I loved Kou. While he wasn't the hardest character to figure out, he definitely wasn't the easiest. Too many times in anime, I see characters that are defined (through obvious means) at the beginning, with a linear line of character development (cough: Clannad). Kou wasn't like that. He didn't need to explicitly say how he felt to get the audience to understand. In Cross Game, actions spoke a lot louder than words; the two main characters weren't outwardly honest about their feelings for one another. It was only through speculation of the other characters and what you could see from the way they acted could the audience know the reality of what Aoba and Kou felt for one another.
Aoba was phenomenal in her own right. She was cute in an abrasive way, and you couldn't help but smile when her and Kou butted heads. Ichiyou knew her shit, so I'm echoing her when I say that she and Kou were very alike. They had a hard time seeing the light in each other because, honestly, who sees the light in their own character? Aoba was definitely was one of the stronger female characters I've come to know. She's definitey up there with Kurisu, Ami, and Ohana.
10/10

##### Music: 7/10
##### Art: 8/10
##### Enjoyment: 10/10 (relative, subject to change)

"""

venting = """

# Venting

### July-02-12: 11:44pm

Usually I'm not the type to go blabbing about my problems to all my friends, but lately I've felt the need to vent a lot. Recently, I've felt the need to enlighten most of my close friends about the shit-show that is my current relationship standing with my father. I mean, I just did it to my cousin five minutes ago. Perhaps this is a better place to vent though. Sure, it's the internet, and sure, everyone can access it, but I want to learn HTML and webdesign anyway; I can kill two birds with one stone. And honestly, if you're this interested in my personal life to come to this site (if you can even call it that, I mean I'm currently running this off Dropbox,) by all means, listen.

"""


view : Model -> Html
view model =
  div []
    [ TopBar.topBar model.currentPage currentLinks
    , Centre.markdown crossGame
    --, Centre.markdown venting
    ]

main : Html
main =
  view model

currentLinks =
  [ li [] [ a [ href "https://ca.linkedin.com/pub/brandon-j-wong/54/43/500" ] [ text "LinkedIn" ] ]
  , li [] [ a [ href "https://github.com/branjwong/portfolio" ] [ text "Portfolio" ] ]
  ]