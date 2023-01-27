# USCG Boating Accident Report Database, 1995–2012 (via MuckRock)

In 2013, [MuckRock](https://www.muckrock.com/)’s Michael Morisy [used the Freedom of Information Act to obtain records from the US Coast Guard’s database of recreational boating accident reports](https://www.muckrock.com/foi/united-states-of-america-10/1995-2012-us-recreational-boat-accident-database-6354/). The records cover accidents, deaths, injuries, and involved vessels from 1995–2012.

The Coast Guard [provided the records](https://www.muckrock.com/foi/united-states-of-america-10/1995-2012-us-recreational-boat-accident-database-6354/#comm-39116) as a Microsoft Access database. To expand the accessibility of this data beyond users of Microsoft Access, this [Data Liberation Project](https://www.data-liberation-project.org/) repository contains the following:

- [A copy of the original records the Coast Guard provided](data/raw) (for archival purposes, via MuckRock’s website).
- [A simple shell script](convert.sh) that uses the [`mdbtools`](https://github.com/mdbtools/mdbtools) conversion suite to convert the database to CSV-formatted files.
- [The converted files](data/converted): a database schema and four CSV files (`Accidents.csv`, `Deaths.csv`, `Injuries.csv`, and `Vessels.csv`).

For more context, please see [the form that the Coast Guard uses to collect the data](https://www.dcms.uscg.mil/forms/smdsearch4081/3865/), as well as the [agency’s Privacy Impact Assessment regarding the database](https://www.dhs.gov/publication/dhsuscgpia-011-boating-accident-report-database-bard).

In January 2023, the Data Liberation Project [filed a FOIA request](https://www.data-liberation-project.org/requests/uscg-boating-accident-report-database/) for more recent (and historical) data. To be notified when those records are available, [express your interest](https://docs.google.com/forms/d/e/1FAIpQLSed3bOZxgNwgMKGQIdPHsb8my4m1b-puK92pySui3EW6Xmkbw/viewform?usp=pp_url&entry.585356262=https%3a%2f%2fwww.data-liberation-project.org%2frequests%2fuscg-boating-accident-report-database%2f), [sign up for the Data Liberation Project’s newsletter](https://www.data-liberation-project.org/newsletter/) and/or [follow the request’s RSS feed](https://www.data-liberation-project.org/requests/uscg-boating-accident-report-database/rss.xml).

# License

The original materials are government records and are in the public domain. The Data Liberation Project is releasing the conversion script and converted CSVs under [Creative Commons Zero (CC0) license](https://creativecommons.org/choose/zero/), though kindly requests that you attribute reasonably if republishing.
