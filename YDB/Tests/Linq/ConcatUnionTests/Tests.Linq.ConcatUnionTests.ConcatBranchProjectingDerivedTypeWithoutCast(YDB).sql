-- YDB Ydb
SELECT
	Unwrap(CAST(0 AS Int32)) as projection__set_id__,
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID > 3
UNION ALL
SELECT
	Unwrap(CAST(1 AS Int32)) as projection__set_id__,
	p_1.ParentID as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID <= 3

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

