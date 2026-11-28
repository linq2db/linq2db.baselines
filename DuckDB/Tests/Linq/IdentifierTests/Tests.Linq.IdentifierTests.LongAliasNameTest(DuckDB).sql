-- DuckDB
DECLARE $parentId INTEGER -- Int32
SET     $parentId = 1

SELECT
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.ParentID,
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.Value1
FROM
	Parent longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent
		INNER JOIN Child longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild ON longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestChild.ParentID = longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.ParentID
WHERE
	longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNameTestParent.ParentID = $parentId

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

