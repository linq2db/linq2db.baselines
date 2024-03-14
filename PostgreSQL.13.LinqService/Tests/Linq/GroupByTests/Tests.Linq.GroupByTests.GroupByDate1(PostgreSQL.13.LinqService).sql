BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(month from grp."DateTimeValue")) as int) as "Month_1",
			Cast(Floor(Extract(year from grp."DateTimeValue")) as int) as "Year_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Month_1",
	grp_1."Year_1"

