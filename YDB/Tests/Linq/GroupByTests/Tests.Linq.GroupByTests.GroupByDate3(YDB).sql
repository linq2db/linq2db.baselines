-- YDB Ydb

SELECT
	SUM(grp_1.MoneyValue) as Total,
	DateTime::GetYear(grp_1.c1) as Year_1,
	DateTime::GetMonth(grp_1.c1) as Month_1
FROM
	(
		SELECT
			DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(CAST(DateTime::GetYear(grp.DateTimeValue) AS Text) || '-'u || Unicode::Substring(CAST(DateTime::GetMonth(grp.DateTimeValue) + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

-- YDB Ydb

SELECT
	SUM(grp_1.MoneyValue) as Total,
	DateTime::GetYear(grp_1.c1) as Year_1,
	DateTime::GetMonth(grp_1.c1) as Month_1
FROM
	(
		SELECT
			DateTime::MakeTimestamp(DateTime::ParseIso8601(Unicode::ReplaceAll(CAST(DateTime::GetYear(grp.DateTimeValue) AS Text) || '-'u || Unicode::Substring(CAST(DateTime::GetMonth(grp.DateTimeValue) + 100 AS Text), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) || ' 'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2) || ':'u || Unicode::Substring(Unwrap(CAST(100 AS Text)), 1, 2), ' 'u, 'T'u) || 'Z'u)) as c1,
			grp.MoneyValue as MoneyValue
		FROM
			LinqDataTypes grp
	) grp_1
GROUP BY
	grp_1.c1

