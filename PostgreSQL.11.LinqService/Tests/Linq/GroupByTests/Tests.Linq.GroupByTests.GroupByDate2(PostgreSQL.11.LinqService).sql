BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	SUM(t1."MoneyValue"),
	t1."Year_1",
	t1."Month_1"
FROM
	(
		SELECT
			Floor(Extract(month From grp."DateTimeValue"))::Int as "Month_1",
			Floor(Extract(year From grp."DateTimeValue"))::Int as "Year_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) t1
GROUP BY
	t1."Month_1",
	t1."Year_1"

