# INFO 498 Final Project Proposal


## Introduction
Extreme weather events due to Climate Change is no new information to anyone. There is near unanimous scientific consensus that the rising atmospheric concentration of greenhouse gases due to human actions will cause warming (and other climatic changes) at Earth’s surface. (McMichael et. al). These changes, which are mainly driven by the dramatic increase of greenhouse gas emissions from anthropogenic activities, have the potential to affect human health in several ways. (Frachini et. al). Many prevalent human diseases are linked to climate fluctuations, from cardiovascular mortality and respiratory illnesses due to heat waves, to altered transmission of infectious diseases and malnutrition from crop failures. (Patz et. al) 
Quantitative studies can help inform policies to adapt to climate changes that are now inevitable because of both natural variability and past greenhouse gas emissions. Such actions typically affect the national or subnational level and require information on the likelihood and expected magnitude of specific health impacts in the local context, allowing for the more appropriate allocation of resources to prevent harm from effects such as extreme weather-related events and changes in disease distributions. (Lendrum et. al)

While there may not be a direct biological causal relationship between Climate Change and Mental Health, it may arise as an after effect of a disaster caused by Climate Change. As noted in a cohort study conducted by Reacher, following severe river flooding on 12 October 2000 in the town of Lewes in Southern England, adults had a _four-times_ higher risk of psychological distress. In this project we will be looking at several datasets and employ statistical power to **analyze the impact of disastrous weather events(as a result of Climate Change) on the state of Mental Health for the US population**.

## Goals of the Project
1. How do natural disasters impact mental health, and are there any trends for specific mental health disorders? 
> Using either a _Differences in Differences_ model or a _Synthetic Control Method_ model, we hope to see if there is a statistically significant _decrease or increase_ in mental health disorders for a specific disaster (example: Hurricane Katrina or Hurricane Harvey). Control and Experiment states are yet to be determined.

2. Has there been a significant trend (increase or decrease) in mental health cases/outcomes given the prevalence of climate change (land and air temperature) in the country?
> Use a _Generalized Linear Model_ to check for significance and correlation between Climate Change and mental health.

3. Do different natural disasters have different effects on mental health of the states’ population? (Eg: Hurricane Harvey & Hurricane Katrina) 
> Use a _two sample t-test_ or a _wilcoxon rank sum test_, depending on normality of data, to compare the mental health measure across a time period for two major environmental disasters (example: Hurricane Katrina and Hurricane Harvey).

## Information about Datasets
For the purpose of our project, we would be working with a variety of datasets. The information for all of them are listed below:  

1. [Climate Change: Earth Surface Temperature Data](https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data/data)

> We accessed this dataset from Kaggle, wherein the data was put together by the **Berkeley Earth**, which is affiliated with Lawrence Berkeley National Laboratory. The Berkeley Earth Surface Temperature Study combines _1.6 billion temperature reports from 16 pre-existing archives. The data is nicely packaged and allows for slicing into interesting subsets (for example by country, but we would be filtering our data only for United States). Kaggle has published the source data and the code for the transformations they applied. The dataset uses methods that allow weather observations from shorter time series to be included, meaning fewer observations need to be thrown away.

2. [NCDC Storm Events Dataset](https://catalog.data.gov/dataset/ncdc-storm-events-database)

> We accessed this data through the data.gov, which is the portal for U.S. Government’s open data. The storm sata is provided by the **National Weather Service (NWS)** and contain statistics on personal injuries and damage estimates. Storm Data covers the United States of America. The data began as early as _1950 through to the present_, updated monthly with up to a 120 day delay possible. NCDC Storm Event database allows users to find various types of storms recorded by county, or use other selection criteria as desired. The data contain a chronological listing, by state, of hurricanes, tornadoes, thunderstorms, hail, floods, drought conditions, lightning, high winds, snow, temperature extremes and other weather phenomena.

3. [National Mental Health Services Survey (N-MHSS-2010)](https://catalog.data.gov/dataset/national-mental-health-services-survey-n-mhss-2010-c0393)

> We accessed this data through the data.gov, which is the portal for U.S. Government’s open data. The **National Mental Health Services Survey (N-MHSS)** is an annual survey designed to collect statistical information on the numbers and characteristics of all known mental health treatment facilities. This is the _only source of national and State-level data on the mental health service delivery system_ reported by both publicly-operated and privately-operated specialty mental health treatment facilities, including: public psychiatric hospitals; private psychiatric hospitals, non-federal general hospitals with separate psychiatric units; U.S. Department of Veterans Affairs medical centers; residential treatment centers for children; residential treatment centers for adults; outpatient or day treatment or partial hospitalization mental health facilities; and multi-setting (non-hospital) mental health facilities.

4. [US Chronic Disease Indicators](https://catalog.data.gov/dataset/u-s-chronic-disease-indicators-cdi)

> We accessed this data through the data.gov, which is the portal for U.S. Government’s open data. This data was collected by **Centers for Disease Control and Prevention (CDC)’s  Division of Population Health**. The dataset provides cross-cutting set of 124 indicators that were developed by consensus and that allows states and territories and large metropolitan areas to uniformly define, collect, and report chronic disease data that are important to public health practice and available for each location (state/city/metropolitan area). We would be filtering this dataset to only focus on Mental Health indicators in each region. 

5. [Behavioral Risk Factor Data: Health-Related Quality of Life (HRQOL)](https://catalog.data.gov/dataset/behavioral-risk-factor-data-health-related-quality-of-life-hrqol-76ea6)

> We accessed this data through the data.gov, which is the portal for U.S. Government’s open data. This data was collected between 1993 - 2010 by Centers for Disease Control and Prevention (CDC). This dataset is from the **Behavioral Risk Factor Surveillance System (BRFSS)**. A compact set of HRQOL measures including a summary measure of unhealthy days have been developed and validated for population health surveillance and have been widely used since 1993. We would be filtering this dataset to only focus on Mental Health indicators in each region. 

## Target Audience
1. **US population**: The US population can use this data to get information about the places with a pretty high rate of natural disasters and how  it can affect their mental health. 

2. **Psychologists/Therapists/Medical Professionals:** Psychologists can review this data to get the information about the places where the disasters have had an impact on the mental health of the population and can help the affected audience. Also, they can study about which are the major mental health problems that are observed amongst the people  who have lived the disasters.

3. **Policy Makers - Climate Change,  Department of Energy**: They can review the data to study the areas that are often affected by the natural disasters and the reasons for the disasters. 

## Technical Description

We are planning on displaying our webpage on a _Shiny app_ so that the graphs & visualizations are interactive to the user. We plan to make most of our visualizations interactive using either plotly or d3. The layout of our Shiny app would be made through _Dashboard package_ on Shiny. 

Our main data management collection challenge is dealing with a _large volume_ of a huge _variety_ of _diverse_ datasets. The majority of our datasets have a significant amount of observations & variables, within different time frames (years) and geographic locations. We anticipate it to be challenging to manage, analyze, visualize and predict this data for the purpose of our project. 

For many of the visualizations, a statistical prediction model or machine learning methods such as synthetic control methods and the difference in difference method will be needed for accurate and realistic graphs. This is a new skill that will be challenging to learn and come with a high learning curve. Within our team, we have different levels of experience dealing with these models however, the biggest challenge we anticipate is to combine different statistical models and visualizations depending on their complexity and our knowledge of statistics & data visualization respectively. 

  
## References

1. [United Nations Framework Convention on Climate Change(UNFCC)](https://unfccc.int/news/president-obama-climate-change-greatest-threat-to-future-generations)
2. [McMichael, J Anthony et.al. “Climate Change and human health: present and future risks”.](https://www.sciencedirect.com/science/article/pii/S0140673606680793)
3. [Frachini et al. “Impact on human health of climate changes”](https://www.ncbi.nlm.nih.gov/pubmed/25582074)
4. [Lendrum, Campbell Diarmid et. al. “Comparative Risk Assessment of the Burden of Disease from Climate Change”](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1764135/)
5. [Patz, A Jonathan et. al. “Impact of regional climate change on human health”.](http://www.precaution.org/lib/05/warming_harms_health.051117.pdf)
6. [Reacher M, et. al. “Health impacts of flooding in Lewes: a comparison of reported gastrointestinal and other illness and mental health in flooded and non-flooded households.”](https://www.ncbi.nlm.nih.gov/pubmed/15137280)
