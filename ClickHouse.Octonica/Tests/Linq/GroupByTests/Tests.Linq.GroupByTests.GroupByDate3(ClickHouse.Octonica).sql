-- ClickHouse.Octonica ClickHouse

SELECT
	sum(grp_1.MoneyValue),
	toYear(grp_1.Date_1),
	toMonth(grp_1.Date_1)
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as Date_1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1

-- ClickHouse.Octonica ClickHouse

SELECT
	sum(grp_1.MoneyValue),
	toYear(grp_1.Date_1),
	toMonth(grp_1.Date_1)
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as Date_1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1

