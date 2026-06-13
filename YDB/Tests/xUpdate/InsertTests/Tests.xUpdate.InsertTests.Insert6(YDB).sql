-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

-- YDB Ydb

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	c_1.ParentID + 1000 as ParentID,
	c_1.ChildID as Value1
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Parent p
WHERE
	p.Value1 = 11

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

