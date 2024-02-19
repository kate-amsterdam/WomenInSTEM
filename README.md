# WomenInSTEM
## Background
This is a project that is looking at the increase of women in stem from 2011-2022.

## Analysis 


For this project, data was sourced from the National Center for Education Statistics. To define STEM (Science, Technology, Engineering, and Mathematics) majors, I researched each listed major in the dataset to determine which ones were considered  "STEM" or "non-STEM," resulting in the creation of a boolean column titled "STEM," where majors deemed STEM received a "TRUE" designation, while others received a "FALSE."

The primary objectives of this study were to determine the trajectory of female participation in STEM fields, assess prevalent areas of study for women in STEM, and gauge the growth of women specifically within the domain of computer science.

The analysis began by examining the yearly percentage change for both women and men in STEM. Visualized through a line graph entitled "Yearly Percentage Change of Men and Women in STEM," the findings showcased a compelling trend: women are increasingly engaging in STEM disciplines at a notably faster pace than their male counterparts, particularly evident in recent years. Notably, in 2017, while both genders experienced growth, women exhibited a marginally higher increase. This trend persisted from 2018 to 2021, with women consistently demonstrating higher percentage changes compared to men. Even in 2022, amidst a decline for both genders, women experienced a less pronounced decrease compared to men.

<img src="https://github.com/kate-amsterdam/WomenInSTEM/blob/main/images/linegraph.png" width="500">

Subsequently, attention turned to the distribution of women across various STEM majors in 2022, depicted in the tree map. Notably, over 50% of women in STEM were majoring in Psychology or Biology. Additionally, Computer Science emerged as the third most popular STEM major for women, accounting for 12.89% of the distribution. Conversely, Science Technologies/Technicians recorded the lowest representation among women in STEM, with a mere 0.71%.

<img src="https://github.com/kate-amsterdam/WomenInSTEM/blob/main/images/blockgraph.png" width="500">

The analysis culminated in an exploration of the annual percentage of women majoring in computer science. An upward trajectory is visible, with the percentage of women in Computer and Information Sciences and Support Services steadily increasing from 9.69% in 2011 to 12.89% in 2022. Notably, an acceleration in growth was observed in recent years, particularly between 2015 and 2022, signaling a growing interest and participation of women in this field.

<img src="https://github.com/kate-amsterdam/WomenInSTEM/blob/main/images/bargraph.png" width="500">

In essence, this comprehensive analysis not only sheds light on the existing gender gap in education in America but also offers a glimmer of hope for future generations of girls. It showcases the ongoing progress in enhancing female representation within STEM fields, evident through noticeable shifts in enrollment trends and a growing interest, particularly in fields like computer science. These findings emphasize the crucial need for sustained efforts to promote inclusivity and gender diversity within STEM disciplines, paving the way for a more equitable and promising future for women.

See the above graphs in a Tableau dashboard [here](https://public.tableau.com/views/WomeninSTEMDashboard/Dashboard1?:language=en-US&).

 ## Sources

 I used [degree completion data](https://nces.ed.gov/ipeds/SummaryTables/report/300?templateId=3000&year=2022&tt=aggregate&instType=1&sid=d3e3eb30-c12a-4fb9-a0aa-ec56661f02e1) from the National Center for Education Statistics for this project. 

See the PostgreSQL queries I used to generate the graphs in the [sql](https://github.com/kate-amsterdam/WomenInSTEM/tree/main/sql) folder.