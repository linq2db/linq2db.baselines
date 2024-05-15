BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	SUM(grp_1."MoneyValue"),
	grp_1."Year_1",
	grp_1."Month_1"
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as "Date_1",
			grp."MoneyValue",
			Floor(Extract(year From make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0)))::Int as "Year_1",
			Floor(Extract(month From make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0)))::Int as "Month_1"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1",
	grp_1."Year_1",
	grp_1."Month_1"

