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
2. **position by distribution:** Presented a pie chart, revealing the diverse landscape of player positions.
3. **Top Players by Overall Rating:** Compiled a table listing the crème de la crème, ranked by their Overall Rating (OVA).

**My Approach:**
- Exported FIFA datasets as CSV files from DuckDB.
- Imported the datasets into Power BI.
- Meticulously cleaned and transformed the data for a pristine analysis.
- Seamlessly merged both datasets for comprehensive insights.

**Discoveries:**
In the fascinating world of FIFA 21, I embarked on a data journey using PowerBI for our 30-day DuckDB challenge. First off, I unveiled the vastness of the player realm, discovering a whopping 19,000 digital athletes. Delving deeper, I unearthed the average height standing at 5.49, with the typical weight clocking in at 165. These players, with an average age of 25, collectively earn an average wage of 167 million.

But the real fun began when I explored the global landscape of players. England proudly led the pack with 1,704 players, showcasing its dominance. Germany followed closely with 1,195 players, making a strong football statement. Next up, I charted the diverse positions players occupied in the FIFA 21 league, creating a visual feast for position enthusiasts.

Zooming in on individual brilliance, I unraveled the top players by age. Lionel Messi gracefully claimed the throne, leaving a mesmerizing trail, closely pursued by the legendary Cristiano Ronaldo.

To make this adventure even more interactive, I crafted visuals featuring slicers for positions, clubs, and nationalities. This allows users to slice and dice the data, gaining insights tailored to their preferences. It's a dynamic journey into the heart of FIFA 21, where numbers tell stories, and players' digital footsteps create a vibrant tapestry of footballing excellence.
With an interactive dashboard, I've brought these insights to life, offering a dynamic exploration of the FIFA data landscape. Stay tuned for more data-driven adventures!

[View My Power BI Visualizations](https://github.com/netflowrex/30daysDuckdb_challenge-/blob/main/powerbi_image.png)

# **Key Insights**
### Player Demographics:

- **Total Players:** 19,000
- **Average Height:** 5.49
- **Average Weight:** 165
- **Average Age:** 25
- **Average Wages:** 167 million

### Nationality Distribution:

- **England:** 1,704 players
- **Germany:** 1,195 players

### Player Position Distribution:

- Detailed visualization available in the dataset.

### Top Players by Age:

1. **Age Rating:** Lionel Messi
2. **Age Rating:** Cristiano Ronaldo

### Visual Enhancements:

- Interactive visuals with slicers for:
  - Player position
  - Club
  - Nationality

### Recommendations:

- **Scouting:** Focus on recruiting players from England and Germany.
- **Budget Allocation:** Strategically allocate budgets considering the high average wages.
- **Tactical Strategies:** Tailor strategies based on the distribution of player positions.
- **Player Development:** Keep an eye on emerging talents and high-rated players in different age groups.
- **Interactive Analysis:** Utilize slicers for a more personalized and focused exploration of the data.

These insights and recommendations aim to provide a comprehensive understanding of the FIFA 21 dataset and guide strategic decisions for teams and analysts.










