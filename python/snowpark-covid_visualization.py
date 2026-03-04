import snowflake.snowpark as snowpark
import matplotlib.pyplot as plt

def main(session: snowpark.Session):

    df = (
        session.table("COVID_ANALYSIS_DB.ANALYTICS.COVID_ANALYSIS_VIEW")
        .filter("COUNTRY = 'AUSTRALIA'")
        .select("DATE", "CONFIRMED_CASES", "PEOPLE_VACCINATED")
        .to_pandas()
    )

    plt.figure()
    plt.plot(df["DATE"], df["CONFIRMED_CASES"])
    plt.plot(df["DATE"], df["PEOPLE_VACCINATED"])
    plt.xlabel("Date")
    plt.ylabel("Count")
    plt.title("COVID Cases vs Vaccination - Australia (2021)")
    plt.show()

    return df.head()