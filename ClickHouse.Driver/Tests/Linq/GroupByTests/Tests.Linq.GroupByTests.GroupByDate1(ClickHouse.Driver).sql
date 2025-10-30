BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	sumOrNull(grp_1.MoneyValue),
	grp_1.Year_1,
	grp_1.Month_1
FROM
	(
		SELECT
			toMonth(grp.DateTimeValue) as Month_1,
			toYear(grp.DateTimeValue) as Year_1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Month_1,
	grp_1.Year_1

