-- YDB Ydb

$CTE_1 = 	SELECT
		r.GuidValue as HasValue
	FROM
		LinqDataTypes r
	LIMIT 1
;

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1
WHERE
	$CTE_1 IS NOT NULL

