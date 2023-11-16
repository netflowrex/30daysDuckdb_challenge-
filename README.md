#  Unveiling Insights: My 30-Day FIFA_21 Data Challenge with DuckDB and PowerBi

![Alt Text](https://github.com/netflowrex/30daysDuckdb_challenge-/blob/main/image_fifa/fifa.jpg)

# Introduction 
**Welcome**  
To this exciting journey through the world of football. 
In these datasets, you'll find a treasure trove of information about FIFA 21 players 
their :
- names
- nationalities,
- ages 
- positions 
- club affiliations
- OVA: Overall rating.
- POT: Potential rating.
- Club: The player's current club.
- Contract: Contract details.
- Positions: The player's preferred positions.
- Height: The player's height.
- Weight: The player's weight.
and a rich array of performance metrics.

For the #30daysduckdbchallenge, I've taken on the task of analyzing two datasets: Fifa_duckdb and Fifa_duckdb2, both equipped with matching column names. 

This challenge has been a thrilling odyssey into the realm of data analysis.

![Alt Text](https://github.com/netflowrex/30daysDuckdb_challenge-/blob/main/image_fifa/DUCKDB.png)

Join me on this 30DaysDuckDBChallenge adventure, where I've dived deep into the FIFA dataset to uncover hidden gems, discern patterns, and stumble upon intriguing insights using the power of DuckDB. 

Together, we'll explore the dynamic world of football data, extracting captivating revelations.

This journey has not only sharpened my SQL skills but also demonstrated the prowess of DuckDB in effectively tackling real-world data challenges. 

So, let's embark on this captivating exploration of the beautiful game.

# **Challenge Overview:**

In the #30DaysDuckDBchallenge, we're delving into FIFA 21 player data. Armed with DuckDB and Power BI, we're on a quest to unravel player insights. Our tasks range from identifying undervalued talents to understanding club dynamics and ranking top players. With the data repository on GitHub and thoughtful data preparation in Power BI, our goal is to convey compelling stories through visualizations. Buckle up for an exhilarating journey through the world of football analytics.

**Key Questions:**

1. Discover underpaid superstars.
2. Decode player positions and counts.
3. Uncover club dominance.
4. Spotlight the best in the game.
5. Find top talents within clubs.
6. Explore age-based performance.
7. Celebrate global potential.
8. Rank players within clubs.
9. Set up a robust data repository.
10. Master Power BI for insightful visualizations.

Get ready to experience the beautiful game from a data perspective!

# Tools used 
- Structured Querying Language (SQL) in the Dbeaver environment
- Power BI for visualization

# Day 1: Setting My Work Environment

- **Creating an account with Motherduck:** [Motherduck Sign-Up](https://app.motherduck.com/?auth_flow=signup)

- **Installed DuckDB on my Local machine:** [DBeaver Installation Guide](https://duckdb.org/docs/guides/sql_editors/dbeaver.html)

- **Installed Power BI on my computer and configured it:** [Power BI Download](https://powerbi.microsoft.com/en-us/downloads/)


# Day 2: Data Loading, Database Creation, and Access

On the second day of this challenge, I achieved the following key milestones:

**1. Database Creation:** I established a DuckDB database, named "challenge."

**2. Database Access:** I successfully integrated and accessed the DuckDB database on Motherduck, our collaborative platform.

**3. Data Loading:** I efficiently loaded the provided CSV files into the DuckDB database, ensuring that our data is ready for analysis and exploration.

This marks another productive day in our 30DaysDuckDBChallenge journey, where we're primed to unlock the potential of this database and unravel fascinating insights from our data.

# **Day 3 to 6 Challenge: Data Cleaning Process**

Here are the tasks to be carried out:

a) **Converting Height and Weight to Numerical Form:**
   - For the 'Height' column, extract the numerical value (e.g., 6'0" becomes 6).
   - For the 'Weight' column, remove the "lbs" and convert it to a numerical format.

b) **Converting 'Value', 'Wage', and 'Release Clause' to Numbers:**
   - The 'Value' column contains values like '€100M' (which means 100 million) and '€10K' (which means 10,000). Strip the symbols ('€', 'M', 'K') and convert the values to actual numbers accordingly.
   - The 'Wage' column also uses 'K' (e.g., '€100K'), which should be converted to thousands.
   - The 'Release Clause' column follows the same pattern with 'M' and 'K'.

c) **Handling 'Star' Characters:**
   - Remove the 'star' character from columns where it appears and ensure the columns are in numerical format.


# Day 7: Exploring Key Questions

Today, let's delve into some intriguing questions:

**Question 1:** Discover players with remarkable value but modest wages.

**Question 2:** Uncover the number of players for each position in our dataset.

**Question 3:** Identify the club with the most extensive player representation.

**Question 4:** Showcase the top 10 players with the highest OVA and POT values.

Our data journey continues, unlocking insights one question at a time.

# **Day 8 & 9 Challenge: Task Summary**

- Identify players with the highest "Overall Rating" (OVA) and "Potential" (POT) within each club.
- Calculate the average OVA for players under 25 years old and over 30 years old in each club.
- List players who share the same age within each club.
- Find the player with the highest "Potential" (POT) for each nationality.
- Rank players by their "Overall Rating" (OVA) in descending order within each club.

These tasks encompass a deep dive into football data, revealing insights, patterns, and the unique characteristics of players and clubs.

# Day 10: Learning Git and GitHub

**Tools:** Notepad++, Git Bash, GitHub.

**Key Steps:**
1. Set up local folder and GitHub repository "Fifa-21."
2. Generated a GitHub classic token for remote interaction.
3. Cloned the repository to my PC using Git Bash.
4. Transferred SQL code from DBeaver to Notepad++.
5. Staged and committed SQL files.
6. Connected to GitHub and pushed changes.

**Commands Used:** are, git add, git commit, git status, git push, git pull, git config.



# **Day 11 and 12: Power BI Visualization**

In the #30DaysDuckDBChallenge, I've dived into the world of data visualization with Power BI using FIFA datasets. Here's a quick glimpse of my journey:

**Tasks at Hand:**
1. **Nationality Distribution:** Created an insightful bar chart showcasing the distribution of players' nationalities.

2. **Age vs. Potential:** Built a scatter plot, complete with trendlines, unveiling the relationship between a player's age and their potential.

3. **Player Position Analysis:** Presented a pie chart, revealing the diverse landscape of player positions.

4. **Top Players by Overall Rating:** Compiled a table listing the crème de la crème, ranked by their Overall Rating (OVA).

**My Approach:**
- Exported FIFA datasets as CSV files from DuckDB.
- Imported the datasets into Power BI.
- Meticulously cleaned and transformed the data for a pristine analysis.
- Seamlessly merged both datasets for comprehensive insights.

**Discoveries:**
- England leads the nationality count with 1,705 players, closely followed by Germany and Spain.
- Player potential surges at age 28, gradually declining beyond 42, emphasizing the significance of youth in the game.
- Center Backs (CB), Goalkeepers (GK), Strikers (ST), and Central Midfielders (CM) dominate player positions.
- The legendary Lionel Messi stands tall with the highest Overall Rating of 93.

With an interactive dashboard, I've brought these insights to life, offering a dynamic exploration of the FIFA data landscape. Stay tuned for more data-driven adventures!

[View My Power BI Visualizations](#your-visualization-link)



# **Key Insights:**

In this engaging analysis, we delved into the fascinating world of 18,980 football players, discovering the stories hidden within their data.

- **Age Averages:** With an average age of 25, this dataset represents the diverse spectrum of football talent.

- **English Dominance:** England emerged as the frontrunner, boasting an impressive 1.7K players. It's clear that football thrives on English soil.

- **Position Spotlight:** Among positions, Center-Back (CB) stole the spotlight, claiming 19.4% of the player population, while Right-Back (RB) represented the rear guard with a modest 1.45%. Position dynamics truly shape the game.

- **Age vs. Potential:** The age dimension revealed intriguing patterns. Players aged 28 to 29 displayed exceptional potential, suggesting a prime period for growth. Conversely, those at age 42 and below showed a dip in potential. It's a reminder that age is not just a number; it's a narrative.

- **Star Power:** Lionel Messi, an icon in the football world, stood tall as the highest-rated player, reflecting his enduring brilliance. Meanwhile, Kylian Mbappe earned the title of the most valued player, symbolizing both youth and excellence.

These insights breathe life into the numbers, revealing the dynamic landscape of football, where nations, positions, and ages intersect to craft unique stories. As we explore further, we'll uncover even more narratives within this captivating dataset. Stay tuned for more revelations.










