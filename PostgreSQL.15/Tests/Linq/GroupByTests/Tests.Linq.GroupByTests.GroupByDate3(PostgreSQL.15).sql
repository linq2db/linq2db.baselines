BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	SUM(t1."MoneyValue"),
	Floor(Extract(year From t1."Value_1"))::Int,
	Floor(Extract(month From t1."Value_1"))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as "Value_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) t1
GROUP BY
	t1."Value_1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	SUM(t1."MoneyValue"),
	Floor(Extract(year From t1."Value_1"))::Int,
	Floor(Extract(month From t1."Value_1"))::Int
FROM
	(
		SELECT
			make_timestamp(Floor(Extract(year From grp."DateTimeValue"))::Int, Floor(Extract(month From grp."DateTimeValue"))::Int, 1, 0, 0, 0) as "Value_1",
			grp."MoneyValue"
		FROM
			"LinqDataTypes" grp
	) t1
GROUP BY
	t1."Value_1"

