-- ClickHouse.MySql ClickHouse
SELECT
	SUM(grp_1.MoneyValue),
	toYear(Coalesce(grp_1.c1, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	toMonth(Coalesce(grp_1.c1, toDateTime64('0001-01-01 00:00:00.0000000', 7)))
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as c1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

-- ClickHouse.MySql ClickHouse
SELECT
	SUM(grp_1.MoneyValue),
	toYear(Coalesce(grp_1.c1, toDateTime64('0001-01-01 00:00:00.0000000', 7))),
	toMonth(Coalesce(grp_1.c1, toDateTime64('0001-01-01 00:00:00.0000000', 7)))
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as c1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

