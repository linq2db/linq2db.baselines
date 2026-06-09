-- YDB Ydb

SELECT
	SUM(grp_1.MoneyValue) as Total,
	grp_1.Year_1 as Year_1,
	grp_1.Month_1 as Month_1
FROM
	(
		SELECT
			DateTime::GetMonth(grp.DateTimeValue) as Month_1,
			DateTime::GetYear(grp.DateTimeValue) as Year_1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.Month_1,
	grp_1.Year_1

