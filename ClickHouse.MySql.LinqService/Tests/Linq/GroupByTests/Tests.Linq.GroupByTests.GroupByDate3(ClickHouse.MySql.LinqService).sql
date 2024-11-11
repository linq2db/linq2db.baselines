BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	sum(grp_1.MoneyValue),
	grp_1.Year_1,
	grp_1.Month_1
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as Date_1,
			grp.MoneyValue as MoneyValue,
			toYear(grp_1.Date_1) as Year_1,
			toMonth(grp_1.Date_1) as Month_1
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1

