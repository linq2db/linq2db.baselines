-- YDB Ydb
DECLARE $year Int32
SET     $year = 2010

SELECT
	Unwrap(CAST(Unwrap(CAST($year AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) AS Date)) as c1
FROM
	LinqDataTypes t
WHERE
	DateTime::GetYear(Unwrap(CAST(Unwrap(CAST($year AS Text)) || '-'u || Unicode::Substring(Unwrap(CAST(t.ID + 100 AS Text)), 1, 2) || '-'u || Unicode::Substring(Unwrap(CAST(101 AS Text)), 1, 2) AS Date))) = 2010

