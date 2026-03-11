-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	SUM(grp_1."MoneyValue"),
	Floor(Extract(year From grp_1.c1))::Int,
	Floor(Extract(month From grp_1.c1))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as c1,
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1.c1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	SUM(grp_1."MoneyValue"),
	Floor(Extract(year From grp_1.c1))::Int,
	Floor(Extract(month From grp_1.c1))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as c1,
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) grp_1
GROUP BY
	grp_1.c1

