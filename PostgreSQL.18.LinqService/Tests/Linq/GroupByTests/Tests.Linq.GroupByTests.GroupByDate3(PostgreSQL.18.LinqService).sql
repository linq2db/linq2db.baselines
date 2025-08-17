BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	SUM(grp_1."MoneyValue"),
	Floor(Extract(year From grp_1."Date_1"))::Int,
	Floor(Extract(month From grp_1."Date_1"))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as "Date_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	SUM(grp_1."MoneyValue"),
	Floor(Extract(year From grp_1."Date_1"))::Int,
	Floor(Extract(month From grp_1."Date_1"))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as "Date_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1."Date_1"

