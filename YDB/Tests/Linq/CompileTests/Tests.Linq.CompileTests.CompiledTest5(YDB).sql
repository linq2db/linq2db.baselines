-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 1

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $p AND p.Value1 = $p_1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID = $p AND p.Value1 IS NULL

