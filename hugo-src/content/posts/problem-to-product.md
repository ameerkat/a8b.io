+++
title = "The Wishbone: Building a physical product from problem to first sale"
date = 2021-03-08T18:41:00-07:00
images = []
tags = ["alibaba", "wishbone", "pet", "patent", "trademark", "fusion-360", "3d-printer", "silicone"]
categories = []
draft = false
+++

In this article I will cover my journey of going from a problem to the creation of an actual product for sale. I am putting this together because I know I would have wanted to see something like this before I started as the entire process of procurement, assembly, logistics, customs, etc. was very opaque to me.

## The Problem
When you have a dog, you most likely have some form of clingy plastic bags wrapped into a roll that you carry around with you to pick up poop. These bags can be *haaard* to open. The best equivalent for the non-dog owner is the produce bags in the grocery store, however these poop bags are harder to open by a factor of 2 or 3 in terms of how long it takes me to open them in worst case scenarios. I also have to deal with them multiple times per day. One way to more reliably open them (and the grocery store produce bags) is to get your fingers wet. However this isn't a reliable option whether there's a mask in the way, or your fingers are dirty, or you can't get your dog to do it for you. If you watch people whipping out these bags you'll undoubtedly notice some struggles. *It's a persistent problem for about half of the dog owners I talked to.* While the problem seems small, it's compounded across the 48 million dog owning households in the US alone. Identifying the problem as a *pain* related to a *mandatory* action, affecting a large number of people, and exacerbated by recent events I decided that it was worth solving.

## Modeling
My initial idea of a spring actuated rubber tipped mechanism that simultaneously opened the next bag while tearing the current bag off as they came out of the dispenser was a bit overly complicated. Once I realized I would have to communicate, coordinate and pay to have this manufactured I quickly decided to shelve that idea for another time. I ended up coming up with a much simpler solution, a small flexible rubber grip that fit to your fingers. Using [Fusion 360](https://www.autodesk.com/products/fusion-360) and an average human thumb measurement of 49mm I created a design that I thought might fit well between the average thumb and index finger. In order to iterate while developing the design effectively it would be ideal to hold the model, assessing its ergonomics and shape and potentially using that hard model as the basis for a mold. To do this I decided to 3d print the model I had created. I set up my [
Monoprice MP Select Mini 3D Printer V2](https://www.monoprice.com/product?p_id=21711) that admittedly I hadn't turned on in the last 2 years since I got it. After a series of test prints, bed releveling, resurfacing, and slowing down the print speed I had a working printer. Having put together an open source 3d printer before that suffered a slew of technical issues, I will say the reliability and ease of use of a premade printer is well worth it for the casual user. I used Ultimaker Cura as my slicer since it has built in settings for my printer.

![First version of the wishbone](/images/wishbone/first_version_wishbone.jpg#mid "A 3d print of the first design")

After seeing the first print I thought it looked a lot like a wishbone, and so I settled on that as the name (The Wishbone) going forward. This first design proved a bit small and boxy looking but I wanted to get something out to improve and iterate on and it served that purpose. After several iterations over the next few days and a few hours of Fusion 360 youtube tutorials (Thanks to the [Product Design Online youtube channel](https://www.youtube.com/channel/UCooViVfi0DaWk_eqxIXXiOQ)) I got something that fit into my fingers and felt right.

![Second version of the wishbone](/images/wishbone/wishbone_second_working_version.jpg#mid "A 3d print of the first satisfactory prototype")

## Prototyping

Creating a working version would prove a bit more elusive. I would need to cast rubber (silicone in this case) in the shape of the object. I used [Smooth-On OOMOO 25](https://www.amazon.com/Smooth-OOMOO-25-Curing-Silicone/dp/B01C4YQ4TU) 2-part silicone, these come in small kits you can buy at most arts and craft stores or online. I actually don't recommend this silicone for this kind of application which I'll explain later when I get to the tear strength issue. I had wanted to create a flexible mold because the part being cast has concave shapes that would essentially lock two halves of a rigid mold together. I know casting silicone into silicone is foolish as silicone melts silicone and will bind together. However I had read that a good enough release agent (a chemical you spread onto the mold surface to allow the cast object to separate easier from the mold) would make this possible.

![A goopy mess of silicone casting into silicone](/images/wishbone/goopy_mess.jpg#mid "We have determined that was a lie.")

What I ended up with was a goopy mess. I trashed that approach and decided to give plaster a second thought. To get around the "locking" mold problem I ended up creating a 5-part pull apart version of the object, held together with tape, that I cast in plaster. After casting I excavated the individual parts from the plaster.

![Pull apart version taped together](/images/wishbone/pull_apart_wishbone.jpg#mid "Over engineering at it's best")

This actually worked, and although unwieldy the silicone cast actually does work as a grip. After the plaster cast (shown below) I ended up reducing the size since it didn't end up being as rigid as I'd hoped and I wanted the curve to stay put without pressure so that surrounding the two sides of the bag would be easy.

![First working version](/images/wishbone/working_version_v1.jpg#mid "A bit longer, floppier, and rougher than I would have hoped.")

### 3d Printed Silicone Molding

When I started I was set on the idea of casting the object into a mold, since that's how I had worked with silicone previously. But this object was just 3d printed, and I could just as easily cut that object out of a box in fusion 360 and make a 3d printed mold instead of the object itself. So that's exactly what I tried for the next iteration.

![Two halves of a 3d printed mold](/images/wishbone/wishbone_first_mold.jpg#mid "Two halves of the 3d printed mold, 6 hours of print time total")

The mold didn't work the first time. Air would get trapped in the mold and the mold just wouldn't fill. I also had no idea how much material should be filling the mold so I ended up with a little stub of a thing. Going back to the mold I added little shafts for air to escape from the bottom of the mold.

![Adding vent shafts to the mold](/images/wishbone/mold_with_vents.png#mid "These vent shafts are curved to prevent catastrophic torpedo access 💥")

This worked though requiring a lot of banging to get the silicone to settle into it.

![Wishbone on a carabiner](/images/wishbone/better_working_version.jpg#mid "A much more presentable version")

The result was a much cleaner version of The Wishbone! What actually worked best in the long run was just slightly over filling the mold in two halves and closing it. This gave me a much direct way to inspect for trapped air when the two halves were apart. Using a vacuum chamber to remove trapped air would also likely work well.

## Testing

At this point all I knew is that I had a problem and a working solution for myself. The next step was to talk to people and see if this was *their* problem as well and if this solution worked for them. I made a 10 of these prototypes and attached each to a carabiner and put them in a cellophane bag to hand out. When talking to a potential user, a useful tip that is basically the gist of [The Mom Test](https://www.amazon.com/dp/B01H4G2J1U) is to start with the problem and ask about it in a way that even your mother could not lie to you. Do not start by making it personal with your solution, the other party has an incentive to sugar coat things to not hurt your feelings. I tried talking to people at the park nearby. I ended up talking to one couple who had actually stopped to pick up their dog's poop and were visibly struggling with the bag. They ended up taking one and providing good feedback later. After that though I decided the dog park was actually a much better place to approach people. Rather than waiting for a dog to come along virtually everyone there is a dog owner, and they are standing around not doing very much while their dogs run around chasing eachother. All in all I talked to 8 people and handed out 4 prototypes to strangers. I ended up distributing the remaining prototypes to friends.

### The Two Problems
In early december I got feedback from *B.* (one of the people I handed The Wishbone out to), that his wishbone had ripped at the attachment point. On that same day my girlfriend sent me this on her walk.

![Broken wishbone](/images/wishbone/breakgate_1.jpg#mid "One of the victims of the 'break-gate' scandal")

After weeks of testing it became apparent there were 2 problems. One was that the the material or design was too floppy. This made it difficult to get around the two sides of the bag. The other is that it would break off at the attachment point.

Silicone as a material has many different properties. One of them is the "hardness". When you go to choose silicone this is the main advertised property you're selecting for. You can find a brief comparison of hardness [here](https://www.smooth-on.com/page/durometer-shore-hardness-scale/). Oomoo 25 is as the name suggests shore 25A hardness, or a bit softer than a gel shoe insole. While the hardness does play a part, there is another property of silicone called *tear strength* that is much more important to the issue of breakage. Smooth-On includes an info sheet with details about material properties. Interestingly when I reached out to manufacturers later I was not able to get a data sheet for the material being used. *It turns out Oomoo 25 has one of the lowest tear strengths out of their silicone line*. To be fair it was selected not for its properties but because it was the only option at the local art store. I tried tweaking the design a little bit but that did little the fix the problem. Purchasing a cheap digital luggage/fishing scale (literally [this one](https://www.amazon.com/gp/product/B00ZWNGZFO)) I was able to compare breaking points for different designs and materials.