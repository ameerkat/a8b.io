+++
title = "Hello World: Building a physical product"
date = 2021-03-08T18:41:00-07:00
images = []
tags = ["alibaba", "wishbone", "pet", "patent", "trademark", "fusion-360", "3d-printer", "silicone", "amazon"]
categories = []
draft = false
+++

In this article I will cover my journey of going from a problem to the first sale of a physical product. As a software engineer I have no experience with physical products. I built this product specifically because I wanted to understand concretely how to actually go out and create a product that could show up on a store shelf. Think of it as my [*hello world*](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) for a physical product. There are a lot of things I would do differently if were to make a product for profit knowing what I know now though. I am putting this together because I would have wanted to see something like this before I started.

## Overview
Since this post is quite long I'm outlining the general steps I took and lessons learned at the top here. You can go through the article for the specifics from each of these steps.
1) Identified a problem I personally wanted to solve
1) Created a simple solution in a CAD program, prototyping it by 3d printing a mold box and casting it in silcone
1) Used it myself and iterated a few times on the design
1) Incorporated and acquired the appropriate business licenses in the state of Washington, got an employer id from the IRS and a business bank account.
1) Handed the product out to strangers and friends who also had this problem to get feedback
1) Addressed the problems (breaking at attachment point, not holding shape) that I received as feedback
1) Found a manufacturer of silicone components on Alibaba and also a supplier of aluminum carabiner clips both based in Shenzhen
1) Sent my 3d model over to the manufacturer to get production samples made. Also ordered samples of the clips
1) Received the samples and tested them out
1) Created a video advertisement on my phone and a carrd single page website to capture a pre-launch mailing list via Facebook ads to gauge interest and seed initial sales on launch
1) Put in an order for a production mold and to get a production run of the silicone components. Also ordered the same number of clips from the second supplier
1) Filed for a preliminary trademark on the product name
1) Created a listing on Amazon and generated the appropriate identifier (FNSKU) for the product labeling and shipping labels
1) Used a Shenzhen based freight forwarder to assemble, pack, label, and ship the product to Amazon. They also took Amazon compliant product photos
1) Filled out the product listing copy, details, price, and uploaded product photos
1) Launched on Amazon, to the mailing list, and via different ad networks. Facebook ads work the best here in terms of cost per result.
1) Filed an allegation of use on the trademark after selling the product.
1) Filed a design patent on the specific physical appearance of my product.

## Lessons Learned

1) Facebook ads are amazingly effective and blow the other ad networks (Amazon, google adwords) I tried out of the water. For comparison my post launch CPC (cost per click) on facebook was $0.15 whereas my CPC on adwords was $3+.
1) Video ads do better than images or text. It could really depend on your product, but from my research seems to be the case usually. I also hear that natural looking video ads that look like organic content do better than video ads that do not, though I did not try something that wasn't like that.
1) The best way to launch a product online is to build a brand and audience rather than just a product. The lifetime value of a customer is critical for maximizing advertising value.
1) Launch a product to a pre-sale mailing list or group. It's really hard to get additional conversions without initial reviews. Seeding your sales will help get reviews quicker. Reviews not only get you more sales but also improve your on-Amazon conversion rate which goes into your product ranking. Also your rank on Amazon is in some part determined by sales velocity. The reviews-rank-sales cycle is a big flywheel and launching to a group is a good way to get that turning quickly. There's also a mental component to it as well where you can get dejected if you launch to crickets.
1) Almost any service from the manufacturing, assembly, and packaging side can be done via Alibaba from the comfort of your home. Most of the manufacturers are really communicative and speak english well enough that you can get almost anything done yourself.
1) Beware of estimation by proxies. Email signups aren't even close to the same as actual sales even though you may rationalize them to be.
1) A freight forwarder can really simplify the process from the manufacturer directly to the Amazon warehouse. They can also really smooth things over with your manufacturer by directly communicating with them to work certain logistics out. My freight forwarder was extremely helpful during the whole process. I didn't even know this was a thing that existed.
1) Selling on Amazon is extremely expensive. That being said they also provide a lot of value. There are multiple and many layers of fees that you should understand and estimate before you even attempt it. Growth can be extremely difficult for < $10 products. I've heard the optimal price points are more in the $20-30+ range (depending on how much your cost is) to provide sufficient margins to allow for advertising driven growth without bleeding money.
1) Having just a few reviews on Amazon changes people's buy rates by a lot (doubled my on-Amazon conversion rate). This is why getting sales early is really useful as you'll likely get some of those people to provide reviews which is critical.
1) You can't track conversions on an Amazon page from Facebook ads or any source for that matter. One way people get around this is through a "warming page" which is a page you own that links to the Amazon product listing. Your goal is to warm the buyer up to the purchase. This is helpful because you can track who clicks through a second time which is a much strong purchase intent and optimize your ads for that, and also it helps protect your on page conversion rate which feeds into your product ranking.
1) Doing due dilligence and reading up and understanding the implications of my business' structure from a legal and tax perspective, as well as licensing and local legislation is probably the most complicated part of the whole process. Filling out the forms was not that hard though. If I were to do this again I would probably just read a book to get a more holistic picture instead of understanding this piece by piece from the internet.
1) In general, making a product will all cost a lot more than you expect if you don't know anything about it. This is a general rule of life though. If you estimate something will take 2 months and $1000 you should probably expect to 4x that.

---

## The Problem
When you have a dog, you most likely have some form of clingy plastic bags wrapped into a roll that you carry around with you to pick up poop.

![Poop bags on a beach](/images/wishbone/brian-yurasits-jVXgfjSDnJI-unsplash.jpg#mid "Like these, thanks Brian Yurasits from unsplash.")
When you take a new one off the roll these bags can be hard to pry open without assistance so the usual method for opening these bags is to lick your fingers. However quite frequently I find myself hesitant or unwilling to lick my fingers for various reasons, resulting in me standing around struggling to open these bags for minutes at a time. How difficult these are to open differ a lot based on brand of bag but there is a lot of *frustration* there, so for at least a small subset of users the problem is worth solving in my opinion. In addition there are ~48 million dog owning households in the US and a large portion of them in urban areas are mandated by local [poop scoop laws](https://outwardhound.com/furtropolis/pet-parenting/the-pooper-scooper-law-is-a-real-thing) to pick up their dogs poop, so the market size itself is potentially fairly large and supported by legislation (this is something people *have* to do).

## Modeling
The first step I took was to design a solution to the problem. Rather than making better bags (which probably would be the smarter thing to do since it's a recurring revenue stream but also a lot more work in R&D and materials) I decided to build a tool for the existing bags that I could buy anywhere. Starting out, I naturally over engineered a super fancy self opening poop bag dispenser. Realizing that I would have to manufacture all the components of this thing, and accounting for the idea that everything that can go wrong will go wrong I decided to go with something much simpler and ended up at a rubber finger grip. Modeling the proposed solution in 3d I can prototype the thing using my 3d printer and you can actually just send your 3d model in a number of standardized formats like [STEP](https://en.wikipedia.org/wiki/ISO_10303-21) to a manufacturer and they can send you samples and manufacture it in quantity.

After doing a bit of research I found out that [Fusion 360](https://www.autodesk.com/products/fusion-360) was likely the software I wanted to use and I looked into some basic tutorials. I created a design that I thought might fit well between the average thumb and index finger and gave it a print on my [
Monoprice MP Select Mini 3D Printer V2](https://www.monoprice.com/product?p_id=21711). I hadn't used it in a while so after a series of test prints, bed releveling, resurfacing, nozzle cleaning, and slowing down the print speed I had a working print. I used [Ultimaker Cura](https://ultimaker.com/software/ultimaker-cura) as my slicer since it has a built in configuration for my printer. After seeing the first print I thought it looked a lot like [a wishbone](https://en.wikipedia.org/wiki/Furcula), and so I settled on *The Wishbone* as a name going forward. The test prints are just to get an idea of the size, shape and feel since the actual product would need to be made out of rubber to be effective. This first design proved a bit small and boxy. After several iterations over the next few days and a few hours of Fusion 360 youtube tutorials (Thanks to the [Product Design Online Youtube Channel](https://www.youtube.com/channel/UCooViVfi0DaWk_eqxIXXiOQ)) I got something that fit into my fingers and felt right.

![Early test print of the wishbone](/images/wishbone/wishbone_second_working_version.jpg#mid "A 3d print of the first satisfactory shape")

I ended up iterating a few more times over the next week before I got near the final design I was to use. In the final version made the shape shorter, added some grip "nubs" and repositioned the tab with the hole to make casting easier.

## Prototyping
If you're not familiar, it's actually quite easy to make things out of silicone rubber at home. You can pick up silicone molding kits that have you mix two chemicals together and this will set into solid rubber after 1-24 hours usually. For this project I used [Smooth-On OOMOO 25](https://www.amazon.com/Smooth-OOMOO-25-Curing-Silicone/dp/B01C4YQ4TU) 2-part silicone. You can buy these kits at most arts and craft stores or online. I actually don't recommend this *particular* silicone for this kind of application which I'll explain later. Starting out I created a really really rough version by casting the wishbone in clay (which was quite tricky due to the concave shape). After seeing how difficult and how bad that turned out I decided to print the entire mold box rather than the object to be cast. I just cut that object out of a box in fusion 360, split the box, added a fill spout, and some "mold keys" to ensure the components of the mold align correctly.

![Two halves of a 3d printed mold](/images/wishbone/wishbone_first_mold.jpg#mid "Two halves of the 3d printed mold, 6 hours of print time total")

The mold didn't work well the first time as air would get trapped in the mold and the mold just wouldn't fill. Going back to the mold I added little shafts for air to escape from the bottom of the mold. Using a vacuum chamber to remove trapped air would also likely work well.

![Adding vent shafts to the mold](/images/wishbone/mold_with_vents.png#mid "These vent shafts are curved to prevent catastrophic torpedo access 💥")

The modified mold worked though still a little finicky. After casting and drying I finally had a working prototype.

![Wishbone on a carabiner](/images/wishbone/better_working_version.jpg#mid)

## Incorporation
*Note that the following is not legal advice, you should check all local regulations and requirements for operating a business.* In order to operate a business in Washington state you'll likely need a [state](https://dor.wa.gov/open-business/apply-business-license) and [local](https://www.seattle.gov/license-and-tax-administration/business-license-tax-certificates) business license. In addition, to acquire a business license you'll likely want to incorporate as some form of entity. While perhaps it's not required, it does make sense in almost all cases. I haven't navigated any part of this as a non-business entity so I can't speak to the issues you may run into. A single member LLC can act as a [passthrough entity from a taxation perspective](https://howtostartanllc.com/taxes/llc-pass-through-taxation) and can be taxed as personal income tax so there isn't much to lose from a financial perspective other than the cost of formation which depends on your state ($200 for Washington). In addition to all that I got a business bank account from [mercury](https://mercury.com/) which is entirely online. There are a few other competitors in this space (online banking for startups and small business) but from what I could see everything else had a fairly bad reptutation. If you do incorporate you'll want to keep your personal and business assets as separate as possible. I ended up incorporating before handing the prototypes out so I could hand them out as my business. There are definitely some nuances of incorporation like what to use as your business address and who to use as a registered agent that you should look into. Both of these can be handled by other companies as recurring services. All of these things do add up, and do require a lot of continual (quarterly and annually) paperwork filings and renewals *even if you don't make any money with your business*. I would advise you to do all this paperwork only when you actually need to and not as the first item to cross off your checklist. I spent $445 total on incorporating and licensing doing it all myself, which seems like quite a lot.

## Testing
Now that I had a working solution the next step was to talk to people and see if this was *their* problem as well and if this solution worked for them. I made a 10 of these prototypes and bagged them for handout. When talking to a potential user, a useful tip that is basically the gist of [The Mom Test](https://www.amazon.com/dp/B01H4G2J1U) is to start with the problem and ask about it in a way that even your mother could not lie to you. Don't come in with your solution and bias or lead the user, people don't want to hurt your feelings and you kind of have to assume they'll just straight up lie to you to make you feel better. For my purposes this means I came in progressively asking about the users experience with poop bags, if they had trouble opening them, if they licked their fingers and how they felt about that before even showing them I had something I wanted them to try. I live in Seattle with a large dog population and lots of dog parks so naturally I went to the dog park to try to talk to people, which worked well since my little corgi is very cute. 

![A picture of my corgi sleeping](/images/wishbone/165307324_135553771906797_8052693660528659066_n.jpg#mid "She's a great sales woman when she's not asleep")

I talked to 8 people that first day and handed out 4 prototypes to people who had that same problem. The other four people I did not even offer it to, they were more comfortable with other solutions such as licking their fingers, or just did not have that problem.

A while later I got feedback from *B* that his wishbone had ripped at the attachment point. We actually experienced the same problem on a walk shortly thereafter.

![Broken wishbone](/images/wishbone/breakgate_1.jpg#mid "A broken bone")

After weeks of testing it became apparent there were 2 problems. One was that the the material or design was too floppy. This made it difficult to get around the two sides of the bag easily since it didn't maintain shape. The other is that it would break off at the attachment point to the clip.

Silicone as a material has many different properties. One of them is the "hardness". When you go to choose silicone this is the main advertised property you're selecting for. You can find a brief comparison of hardness [here](https://www.smooth-on.com/page/durometer-shore-hardness-scale/). Oomoo 25 which I used, is as the name suggests shore 25A hardness or a bit softer than a gel shoe insole. While the hardness does play a part in maintaining its shape, there is another property of silicone called *tear strength* that is much more important to the issue of breakage. Smooth-On, the manufacturer of the silicone I use, includes an [data sheet](https://www.smooth-on.com/tb/files/OOMOO_25_30_TB.pdf) with details about material properties. *It turns out Oomoo 25 has one of the lowest tear strengths out of their silicone line*. I did some research and bought Moldstar 30 which has a much higher advertised tear strength as outlined in its [data sheet](https://www.smooth-on.com/tb/files/MOLD_STAR_15_16_30_TB.pdf), and a cheap luggage scale off Amazon to compare the two models inserting the scale's hook into the hole of the wishbone and recording when it broke. Without going into too many details the MoldStar was 3x more resilient to tearing in my own test. In addition, even though the Moldstar was around the same hardness it held a lot more of the original shape and wasn't as floppy.

I should note here that the material that the final product would use would be neither of the above. This would be whatever the manufacturer has available and after talking to different manufacturers you basically just get to select for the type of material (silicone), the hardness (e.g. 25A), and the color (as a pantone color id). Solving the aforementioned problems now was important to determine if the material properties alone could solve them or if the design would need to be altered to accomodate for them.

## Sourcing

With the above problems out of the way, I went onto [Alibaba](https://www.alibaba.com/) and found silicone manufacturers (simply searching for "silicone parts"). I reached out to them to see if they did custom molding and to let me know and I would send a model for a quote on the minimum order and samples. Generally the cost of manufacturing gets cheaper the more items you make, so the quote would depend on the number of items you would want in an order. Each manufacturer has a minimum order quantity that they will fulfill. Something else you may want to note if you're thinking way ahead would be the maximum capacity per month of the manufacturer, however for my product I didn't pay too much attention there since this number seems so far above what I'll actually need. How many working days it takes for the production run will usually be included in the quote and can be useful to note and compare. Customized sample can be a lot relatively speaking since they have to build a sample mold. My sample mold cost me about 20% of my production mold. For silicone parts it seems the sample mold is made to a lower tolerance and perhaps is a single unit whereas production molds usually produce some number of units at a single time (for example my production mold ended up being 24 units). On Alibaba you'll also want to consider the reputation of the company, how many sales they've done and if they have any kind of certifications.

![](/images/wishbone/reputation.png#mid "The reputation of the supplier I ended up going with")

The sample mold cost me around $243 including 10 samples shipped to me, and from time ordered to time received took about 18 days. The quote I received for each silicone rubber component was 9.8 cents for a production run of 1000 (the minimum order) plus a cost of $1200 for a production mold. I also sourced some carabiner clips for 9 cents a piece (no fixed costs there since these are not custom). One of the mold quotes from another manufacturers was $2900 for the same 24 unit production mold, so it does pay to shop around. One thing that really struck me during this process was just how cheap the variable cost per item is (17.9 cents) and how much of the final price goes to bundling, packing, shipping and getting it to the customer.

## Prelaunch
Before launching I wanted to gauge real customer interest. While I had handed out these prototypes and I had sent a follow up survey where people did indicate that they would purchase the wishbone, it's very different to say you'll buy something on a survey and to actually do it. I created a video ad on my phone, turned it into an ad via [storyblocks](https://www.storyblocks.com/) and set up a [carrd (note this is a referral link)](https://try.carrd.co/rw9yp8d7) site to capture emails. Once I had that setup I created an ad campaign on facebook. All this served two purposes namely to gauge interest and to collect a prelaunch mailing list to seed sales (and thereby reviews).

![](/images/wishbone/carrd_site.png#mid)

All in I spent around $282 on the advertisement on Facebook and collected 129 email signups at a cost of around $2.18 per signup when I optimized for the email signup event. When I just optimized for clicks my cost was around $4.16 per signup. I would definitely recommend optimizing your ad for the desired result since the cost per result can differ drastically, although for something like Amazon conversions this isn't possible. While I knew it in theory, one thing I learned after launch is that an email signup is *not* even remotely a good proxy for a sale at all. If possible, definitely do try to sell your actual product and see the cost of advertising to see that conversion rate. If I were to do this again I would probably sell home made ones via etsy to test this in addition to collecting a mailing list. I had some excuses for why I didn't do this the first time around but honestly nothing should have stopped me from doing so. While I was doing this I also did some more research on product manufacturing and selling on Amazon. One thing I really had put no thought into before making this product was advertising. Apparently it is possible to advertise a single product profitably but to do this you need a product with sufficient margins to cover the advertising costs. Really small products that have low price points (I was thinking of pricing this anywhere from $5-10) and low life time customer value are not great products to build an online business with because advertising based growth means selling products at a loss and your only hope of breaking even is to grow the business big enough to turn off advertising and maintain sales organically. A lot of people who are successful at ecommerce talk a lot about building brands, groups and audiences and maintaining customers and maximizing their lifetime value. However this isn't really the purpose of this exercise so I opted to not go down that path.

## Manufacturing, Packaging, Labeling, and Shipping
Although I didn't know the tear strength of the silicone (the contact I had for the manufacturer was unable to provide a datasheet for the material), the samples provided looked and behaved great. The tear strength of the samples was higher than that of the Moldstar 30 I had tested earlier when testing it using my fishing/luggage scale. I ended up tweaking the color a little bit and requesting more samples but other than that I didn't iterate at all on the design after requesting the samples. The total calendar time for getting the run of 1000 silicone components (the minimum order) was about 2 weeks but the order did fall on a chinese holiday which caused some delay.

The next step was to take the shipment of silicone parts, the shipment of carabiners and to assemble (combine the silicone component with the carabiner), pack, and label them. This was probably the most opaque part of the process to me when I first started. I did a bit of research and ended up finding an FBA (fulfilled by Amazon) freight forwarder that was able to do all that. I'm guessing if the assembly was more complicated I would need a supplier who does product assembly (you can also find these on Alibaba under something like "assembly service"). I'm guessing most freight forwarders are able to do all those things but I went with FBA Bee and confirmed that they were able to assemble as I desired, pack, label and ship the items as well as take some product shots. At this point I was pretty set on having Amazon sell and fulfill my products since I didn't want to deal with the actual shipping of the product. As it turns out, in retrospect there was definitely pros and cons of selling on and fulfilling via Amazon.

### Pros
1) Listing on Amazon means I can get organic product discovery once the listing has some traction
1) Fulfillment by Amazon means I don't have to deal with shipping the product to the customer (though a lot of 3rd party fulfillment handlers exist as well)
1) I don't need to maintain a storefront, and pay out a fee to shopify or the likes for that
1) In reality the $7 price point due to the high fulfillment fee can be framed as a blessing. It helps select for people who actually *need* your product. A higher price point actually forces a choice and not a comparison to just licking your fingers, which if you like that, it's free, forever. I can drop the price or split out shipping to lower the perceived price by fulfilling through a third party later.
1) Fulfilling through Amazon, the product is prime eligible.

### Cons
1) Since my product is a new type of product that people aren't searching for, it is unlikely that organic discovery in search results will be come quickly.
1) There are some restrictions on Amazon product listings if you don't have an active trademark on your brand yet. You can't use their early review program (Vine), can't post product videos to the listing as the seller and can't use images/tables in the product description. You also have to list the brand as "Generic" for a new product.
1) Fulfilling with Amazon means you don't get to set the shipping price. You pay (partly) as a fee out of your product cost. Out of a final product cost of $6.99, $4.03 actually goes to Amazon to get it to the customer. The cost of the fulfillment fee is based on the dimensions and weight of the object and part of the fee is also based on the product category. I'll list out the fee structure below. I can reduce this a little further through a special program called [small and light](https://sell.amazon.com/fulfillment-by-amazon/fba-small-and-light.html).
1) I pay a monthly fee of $39.99 for an Amazon [seller account](https://sell.amazon.com/start.html). There is another account option that has a fee per product sold.
1) You can't track or target conversions from facebook ads to Amazon

All in all though selling on Amazon does simplify things and provides the potential for organic discovery and offloads a lot of responsibilty. The FBA freight forwarder requested that I generate a packaging label (which I did in inkscape) with certain characteristics. Items manufactured in China must clearly say so on each unit for sale which is a US customs restriction. If you want a trademark you *must* use it "in commerce" that is to say related to the sale of the product, so putting it on your packaging is important. Furthermore for brand features on Amazon your brand name must appear on the product packaging and you need a picture of the brand name appearing on the product packaging. 

Your product must have a valid UPC, EAN, or GCID to register it on Amazon and receive an identifier to put on the package. I used SnapUPC.com to purchase a valid UPC and registered that, and received the ASIN and also the FNSKU from Amazon. The ASIN is the identifier of the product that shows up in the URL when you visit Amazon. The FNSKU (fullfillment network SKU) is the ID that needed to appear on the individual product packaging labels.

![](/images/wishbone/product_view_01.jpg#mid)

All in all assembly, packaging, and shipping to Amazon directly cost me around $497.52 (which works out to 49 cents per unit) and was handled completely by the freight forwarder. In addition they provided me with cheap product photos so that I didn't have to receive the final unit and get those myself. Amazon has requirements around the product photos so that they look nice on the listing page, with the main ones being that the product has to take up 80% of the image and the background must be pure white which means it's actual not that super easy to just do this with a phone or borrow camera, you'll probably want some sort of photo lightbox which I didn't want to buy for a few pictures.

## Launch
I filled out my product listing, following some popular product listings as a guideline, added a demo video, and uploaded the product photos I got from the frieght forwarder to Amazon. The freight forwarder took care of all the shipping so that the products didn't have to come through me. I launched the product to the mailing list I had generated earlier. I sold some 45 or so in the first few weeks from that mailing list and some advertising. The product is live at https://www.amazon.com/dp/B092RY15TB and my warming page that I target facebook ads to is at https://wishbonedog.com/

![](/images/wishbone/product_page.png#mid)

I'm planning on doing a follow up article on growth and advertising since that is quite a lengthy topic itself and is outside the scope of this page. I currently spend about $30 in advertising/day to generate $30 in sales. One thing that is quite interesting is the cost breakdown per unit. Note this does not include any fixed costs like the mold cost, development materials, etc.

|Cost|Description|
|---|---|
|$0.10094|Cost paid per silicone item|
|$0.09266|Cost paid per aluminum carabiner|
|$0.24452|Amortized cost of shipping|
|$0.10000|Labeling|
|$0.15000|Repacking|
|$0.56000|Amazon referral fee|
|$3.47000|Amazon fulfillment fee|
|$4.71812|**Total variable costs**|

## Expenses
<iframe class="airtable-embed" src="https://airtable.com/embed/shrvi44IlshzpuY6g?backgroundColor=yellow&viewControls=on" frameborder="0" onmousewheel="" width="100%" height="533" style="background: transparent; border: 1px solid #ccc;"></iframe>

*note that the table above is not completely exhaustive as some expenses were charged to a different accounts, and some materials and software were already available at hand*

Overall I spent around ~$3600 on my hello world including inventory which is in theory valued at $7000, of which around $3000 can be recouped by me if I sell all units not accounting for any advertising costs, leaving me at a defecit of $600 for my initial order. The 3600 spent is significantly more than it would cost to write a hello world in just about any language, including the computer. That being said I'm glad I saw it through and I've learned a lot in the process!