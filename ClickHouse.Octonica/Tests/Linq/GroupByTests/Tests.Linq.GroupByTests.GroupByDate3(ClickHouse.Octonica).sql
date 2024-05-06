BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sumOrNull(grp_1.MoneyValue),
	grp_1.Year_1,
	grp_1.Month_1
FROM
	(
		SELECT
			makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0) as Date_1,
			grp.MoneyValue as MoneyValue,
			toYear(makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0)) as Year_1,
			toMonth(makeDateTime(toYear(grp.DateTimeValue), toMonth(grp.DateTimeValue), 1, 0, 0, 0)) as Month_1
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Date_1,
	grp_1.Year_1,
	grp_1.Month_1

