+++
title = "Survey of Web3 Analytics"
date = 2022-05-05T23:51:00+01:00
images = []
tags = ["web3", "analytics", "social", "dune", "opensea", "4 experiments", "bootstrap", "nifty analytics"]
categories = []
draft = false
+++

## Overview
In this post I'll walk through analytics tools that are designed for monitoring web3. I'll stick to tools crafted more towards non-fungible blockchain data (ETH, SOL, etc.) rather than cryptocurrency market technical analysis (e.g. tools for finding patterns in Bitcoin prices). I'll go over the biggest competitors in the web3 analytics space that are operating today, and what sets them apart from one another. I'm working on something in this space (see [the IndieHackers Nifty Analytics project](https://www.indiehackers.com/product/nifty-analytics)) that hopefully provides a bit more context into off chain data.

## Summaries
This list contains the summaries copied from the individual sections on each tool below. I've put this up here as a convenience for you.

* [Dune](https://dune.com/home) is an open analytics platform to build, share, and remix dashboards for pricing/exchange data and on chain data for xDai, Eth, and Sol. Its flexibility and strong open source ethos is what sets it apart.
* [NonFungible](https://nonfungible.com/market-tracker) treats NFTs more like traditional financial assets providing "your dad's" PDF reports and high level charts focused on market and individual asset price action. Nicely presented but not a lot of substance, seemingly a hook for their consulting services.
* [Moby](https://moby.gg/) is a real-time NFT market trend analysis tool that looks like it's built for active traders or people seriously scoping out what's emerging. But its free features seem to be the severely limiting.
* [Ayzd](https://app.ayzd.com/nft-projects) is a curated and somewhat incomplete catalog of NFT projects, metadata, and news. They have an opinion on each project ranking various attributes such as Viral Potential and Community, however they don't show their work. Notably they do not track transactional data.
* [NFTGO](https://nftgo.io/) is one of the most comprehensive platforms for NFT analytics available, and it's free. They provide near real-time and correlated transactional, rarity, and holder data.
* As the big dog in the NFT world, [OpenSea](https://opensea.io/) may leverage their position to expand the stats they offer. Job listings indicate they are looking to get richer community insights that include off chain data. Whether they intend to open that analytics infrastructure is yet to be seen.

Keep scrolling for more details about what each project has to offer. **In summary I would suggest NFTGO as the best overall analytics tool if you're looking for NFT collection data. If you're looking to play with blockchain or marketplace metrics in a more open ended fashion, Dune is the way to go.**

## Dune
[Dune](https://dune.com/home) is probably the biggest champion of the space at the moment, [having raised ~$70 million earlier this year](https://news.bitcoin.com/web3-data-platform-dune-analytics-propels-to-unicorn-status-after-69-4-million-fundraise/).

![](/images/survey-of-web3-analytics/dune-main-page.jpg "The main page of the Dune website has a very 'bitclout' feel. Minimalist, monospaced, emoji driven.")

The main thing that sets Dune apart from most of the competitors in the space is user generated content. Users can create and share dashboards freely as well as open them up and 'view source'.

![](/images/survey-of-web3-analytics/dune-dashboard-example.jpg "Dashboards in Dune can contain fixed graphics and text, or dynamically calculated graphs and metrics.")

Graphs and charts are constructed from a SQL like syntax, the not-so-secret *spice* of Dune, that you can get from any of the blocks by clicking on the chart or metric title. An example query is below.

```
SELECT
    source,
    SUM(vol_usd),
    COUNT(vol_usd)
FROM (
SELECT 
    CASE 
        WHEN sv3."senderWallet" = '\xc590175E458b83680867AFD273527Ff58f74c02b' THEN 'Metamask'
        ELSE 'Web App'
    END as source,
    "signerAmount" / 10 ^ p.decimals * p.price as vol_usd
FROM airswap."Swap_v3_evt_Swap" sv3
left join prices.usd p on p.minute = date_trunc('minute', evt_block_time) and p.contract_address = sv3."signerToken"
WHERE 
    CASE
        WHEN {{time}} = 'Day' THEN evt_block_time > now() - interval '1 day'
        WHEN {{time}} = 'Week' THEN evt_block_time > now() - interval '1 week'
        WHEN {{time}} = 'Month' THEN evt_block_time > now() - interval '1 month'
        WHEN {{time}} = 'Year' THEN evt_block_time > now() - interval '1 year'
    END

) as vol_tx
GROUP BY 1
```

The goal of Dune then seems to provide analytics for what's happening on chain, in a transparent, shareable, and modifiable way. It has a very open source feel. The pro plan similarly reflects that, with Dune Pro letting you keep private dashboards, export data, and remove watermarks as well as increased priority and parallelization for queries.

![](/images/survey-of-web3-analytics/dune-pricing.jpg "Fear is the mind killer... And I'm afraid the pro price tag has just murdered my brain.")

Unlike a lot of the other tools that boil down to "price analysis" or "rarity scouting" tools, Dune lets you ask your own questions and get interesting answers, which I like. This isn't a tool that is necessarily well suited for exploring individual NFTs or tracking how rare that gold necklace on your cat faced dolphin™ is, but it's not trying to be. The documentation seems fairly robust at a glance and outlines the [data structure of queryable tables in detail](https://docs.dune.com/data-tables/data-tables/raw-data/ethereum-data). They support xDai, Ethereum, and Solana data as well as exchange data for a wider variety of tokens. Unlike NFT specific analysis tools, Dune lacks system level structured "metadata" around NFT projects (such as who runs it, what's their discord or twitter, rarity, etc.) that some other tools in this list attempt to capture. However Dune is flexible enough that users can always construct dashboards that bring in this data in a fixed manner, or even [add this data themselves to user generated tables](https://docs.dune.com/data-tables/data-tables/user-generated).

### Summary
[Dune](https://dune.com/home) is an open analytics platform to build, share, and remix dashboards for pricing/exchange data and on chain data for xDai, Eth, and Sol. Its flexibility and strong open source ethos is what sets it apart.

## NonFungible
Capturing that premo domain, [NonFungible.com](https://nonfungible.com/market-tracker) seems to be a consulting firm that positions themselves as a market tracker for NFTs.

![](/images/survey-of-web3-analytics/non-fungible-rankings.jpg "Volume ranked list of NFTs on their market tracker homepage")
![](/images/survey-of-web3-analytics/non-fungible-nft.jpg "Individual Monke on NonFungible")

As you might notice, similar to OpenSea they provide collection level aggregate stats as well as individual NFT level data, including tags. The tags seem to vary by collection, for example crypto punks just provides a list of combined tags rather than specific attributes.

![](/images/survey-of-web3-analytics/non-fungible-nft-crypto-punks.jpg "Cryptopunk is just a bag-o-tags")

In all honesty it's hard to see what differentiates the data you can get here over OpenSea or whatever marketplace you use itself. They have quarterly and annual "NFT reports" which sit behind an email capture. While I won't repost any part of the report here since I've agreed not to by checkbox, it seems to be a nicely formatted PDF that looks a bit like an annual report for a publicly traded company. The report seems to be primarily market distribution/segmentation and financial data for NFTs as a whole. As a company they seem to be using their market data and reports as a means to drive traffic to their consulting services.

### Summary
[NonFungible](https://nonfungible.com/market-tracker) treats NFTs more like traditional financial assets providing "your dad's" PDF reports and high level charts focused on market and individual asset price action. Nicely presented but not a lot of substance, seemingly a hook for their consulting services.

## Moby
Compared to the other analytics platforms [Moby](https://moby.gg/) seems to be more geared towards actually finding emerging NFT projects. This is very much a scouting and screening tool. You're able to find things as they're minting rather than after they start trending on the exchange. It's hard to describe but the things trending on OpenSea, for example, seem to be projects which now are expensive, whereas projects trending on Moby, similar to IcyTools (see honorable mentions) seem to be projects that are gaining traction.

![](/images/survey-of-web3-analytics/moby-main-page.jpg "Moby main page trending NFTs")

Most of the site is blocked for non-subscribers, or limited to 1 hour update intervals. Subscriptions run at 0.1 ETH for 6 months ($275 at the time of writing, or ~$46/month).

![](/images/survey-of-web3-analytics/moby-pro-blocked.jpg "Moby, let me in. *cries in Eric Andre*")

This is a tool built for active traders of NFTs, or people looking to find the hot new thing a day or two before everyone else. In a way it's exciting (heck, I got excited about something just researching for this article). Moby is a real-time NFT screener that can identify trends in real-time, and even has implemented their own Limit Orders system you can use based on your own screeners.

### Summary
[Moby](https://moby.gg/) is a real-time NFT market trend analysis tool that looks like it's built for active traders or people seriously scoping out what's emerging. But its free features seem to be the severely limiting.

## Ayzd
![](/images/survey-of-web3-analytics/ayzd-project.jpg "Ayzd project view")

Probably one of the more "different" tools on this list, [Ayzd](https://app.ayzd.com/) seems to focus on acting as a metadata repository for NFT projects. Ayzd shows very rudimentary twitter metrics (just the follower counts), founding team members, and a project score projected onto a radar chart. They break each project down into scores for Utility, Uniqueness, Community, Team, Viral Potential, and Visual Quality. It is not possible to filter or rank by these scores in the project listings. More importantly they don't brank down those scores or how they rate projects. Searching for a few things I found on Moby, the catalog seems to be somewhat incomplete (not a scientific assessment).

![](/images/survey-of-web3-analytics/ayzd-stats-web.jpg "Ayzd is out here treating your collection like an RPG character.")

What makes Ayzd kind of unique is that they don't provide any transactional data at all. They do provide mint calendars and news. It's nice to see web3 communities treated as communities, but Ayzd certainly falls a little short in depth of analysis.

### Summary
[Ayzd](https://app.ayzd.com/nft-projects) is a curated and somewhat incomplete catalog of NFT projects, metadata, and news. They have an opinion on each project ranking various attributes such as Viral Potential and Community, however they don't show their work. Notably they do not track transactional data.

## NFTGO
[NFTGO](https://nftgo.io/) is an analytics tool for NFTs that is probably closest to Moby on this list, however goes over the top in providing charts and correlations and it's free as far as I can tell. "Top Mints" for example shows you what's popular being minted in the last 15 minutes. There's so many graphs and charts that it can be overwhelming figuring out what to look at. NFTGO provides the most extensive list of metrics out there that I've seen in a tool specifically catered towards NFT collections. In addition a lot of their site is centered around tracking "whales" and their activity, as well as correlating users who hold "blue chip" NFTs. In essence they categorize and track important or influential users, and important or influential NFT projects and use those in their metrics. You can see what whales have traded, minted, or hold and everything related to whales is flagged throughout the site. Similarly you can see how many users hold a project that also hold a "blue chip" NFT.

![](/images/survey-of-web3-analytics/nft-go-top-mints.jpg "Top mints in the last 15 minutes on NFTGO")

Unlike others on this list, NFTGO has rich rarity data that can be viewed at the collection and individual NFT level.

![](/images/survey-of-web3-analytics/nft-go-rarity-data.jpg "Collection level rarity data for Azuki")

![](/images/survey-of-web3-analytics/nft-go-individual-rarity.jpg "Azuki#5558 rarity metrics")

In addition NFTGO publishes some research reports which are just blog posts essentially (e.g. "Does Rarity Affect the Price of Blue Chip NFTs?" and "Six Key Trends Happening Right Now on Blue Chip NFTs"). NFTGO is a great blend of rarity metadata, transactional data, as well as some unique data on holders.

![](/images/survey-of-web3-analytics/nft-go-holder-data.jpg "Save the whales")

### Summary
* [NFTGO](https://nftgo.io/) is one of the most comprehensive platforms for NFT analytics available, and it's free. They provide near real-time and correlated transactional, rarity, and holder data.

## OpenSea 🤔
[OpenSea](https://opensea.io/) as a marketplace provides rudimentary statistics related to pricing and transactional data.

![](/images/survey-of-web3-analytics/open-sea-ranking.jpg "High level NFT ranking data on OpenSea")

You can explore OpenSea transactional data such as listings, bids, sales, etc. on specific chains or projects via the stats section of their site. Most of this data is available in aggregate via their APIs as well, which are freely queryable (for example [collection floor price data](https://docs.opensea.io/reference/retrieving-collection-stats)) within certain rate limits.

![](/images/survey-of-web3-analytics/open-sea-transaction-data.jpg "OpenSea sales and bids data for the infamous monkeys")

OpenSea is the biggest NFT marketplace by far. If you know anything about NFTs, and you're looking for high level aggregate data that is freely accessible then you're probably already there. OpenSea warrants being on this list because they are *well-positioned* to provide richer analytics on top of their on-chain and in-house transactional data. They are currently looking for [candidates to do this very thing as a "Web3 Community Data Scientist"](https://jobs.lever.co/OpenSea/4a60deca-6c25-42cd-958c-f5e8707b6583).

![](/images/survey-of-web3-analytics/open-sea-job-do.jpg "OpenSea looking for community data scientists to do analysis including off chain social data such as twitter and discord")

### Summary
As the big dog in the NFT world, [OpenSea](https://opensea.io/) may leverage their position to expand the stats they offer. Job listings indicate they are looking to get richer community insights that include off chain data. Whether they intend to open that analytics infrastructure is yet to be seen.

## Honorable Mentions   
### Icy Tools
Very similar to Moby, [Icy.Tools](https://icy.tools/) aims to show you what's trending in near real time. Data updates at 1 hour intervals for free users, with the option to go down to 1 minute for paid subscribers. Volume and price data at a high level are available but more in depth charts, minting and holder statistics are not available unless you pay. You can setup feeds and alerts on specific criteria to watch as NFTs change over time.

![](/images/survey-of-web3-analytics/icy-tools.jpg)