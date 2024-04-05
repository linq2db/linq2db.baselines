BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	SUM(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_2"
FROM
	(
		SELECT
			Floor(Extract(month From grp."DateTimeValue"))::Int as "Month_1",
			grp."MoneyValue",
			Floor(Extract(year From grp."DateTimeValue"))::Int as "Year_1",
			Floor(Extract(month From grp."DateTimeValue"))::Int as "Month_2"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Month_1",
	grp_1."Year_1",
	grp_1."Month_2"

