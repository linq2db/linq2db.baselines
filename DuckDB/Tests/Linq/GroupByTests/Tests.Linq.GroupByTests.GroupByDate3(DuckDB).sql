-- DuckDB

SELECT
	SUM(grp_1.MoneyValue),
	EXTRACT(year FROM grp_1.c1),
	EXTRACT(month FROM grp_1.c1)
FROM
	(
		SELECT
			make_timestamp(EXTRACT(year FROM grp.DateTimeValue), EXTRACT(month FROM grp.DateTimeValue), 1, 0, 0, 0) as c1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

-- DuckDB

SELECT
	SUM(grp_1.MoneyValue),
	EXTRACT(year FROM grp_1.c1),
	EXTRACT(month FROM grp_1.c1)
FROM
	(
		SELECT
			make_timestamp(EXTRACT(year FROM grp.DateTimeValue), EXTRACT(month FROM grp.DateTimeValue), 1, 0, 0, 0) as c1,
			grp.MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

