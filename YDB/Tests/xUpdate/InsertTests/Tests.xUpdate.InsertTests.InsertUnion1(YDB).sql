-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- YDB Ydb

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	t1.ParentID + 1000 as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			c_1.ParentID as ParentID,
			Unwrap(CAST(Math::Floor(Unwrap(CAST(c_1.ChildID AS Double)) / 10) AS Int32)) as Value1
		FROM
			Child c_1
		UNION
		SELECT
			Coalesce(c_2.ParentID, 0) as ParentID,
			Unwrap(CAST(Math::Floor(Unwrap(CAST(Coalesce(c_2.GrandChildID, 0) AS Double)) / 100) AS Int32)) as Value1
		FROM
			GrandChild c_2
	) t1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Parent c_1
WHERE
	c_1.ParentID > 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

