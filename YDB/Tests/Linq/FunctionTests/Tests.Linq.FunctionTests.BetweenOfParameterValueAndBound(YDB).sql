-- YDB Ydb
DECLARE value Int32
SET     value = 3
DECLARE low Int32
SET     low = 0

SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	$value BETWEEN $low AND p.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
DECLARE value Int32
SET     value = 3
DECLARE low Int32
SET     low = 0

SELECT
	p.ParentID as ParentID
FROM
	Parent p
WHERE
	$value NOT BETWEEN $low AND p.ParentID

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

