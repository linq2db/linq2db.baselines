BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.ParentID
	FROM
		(
			SELECT DISTINCT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 1
		) t1
)
SELECT
	COUNT(*)
FROM
	Parent p
		INNER JOIN CTE_1 c_2 ON p.ParentID = c_2.ParentID
		INNER JOIN CTE_1 c2 ON p.ParentID = c2.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
		INNER JOIN (
			SELECT DISTINCT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 1
		) c_2 ON p.ParentID = c_2.ParentID
		INNER JOIN (
			SELECT DISTINCT
				c2.ParentID as ParentID,
				c2.ChildID as ChildID
			FROM
				Child c2
			WHERE
				c2.ParentID > 1
		) c2_1 ON p.ParentID = c2_1.ParentID

