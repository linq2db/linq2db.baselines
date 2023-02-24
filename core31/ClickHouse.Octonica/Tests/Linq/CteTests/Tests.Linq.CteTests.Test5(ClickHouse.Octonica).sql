BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
		INNER JOIN (
			SELECT DISTINCT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > toInt32(1)
		) c_2 ON p.ParentID = c_2.ParentID
		INNER JOIN (
			SELECT DISTINCT
				c_3.ParentID as ParentID,
				c_3.ChildID as ChildID
			FROM
				Child c_3
			WHERE
				c_3.ParentID > toInt32(1)
		) c2 ON p.ParentID = c2.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT DISTINCT
		c_1.ParentID,
		c_1.ChildID
	FROM
		Child c_1
	WHERE
		c_1.ParentID > toInt32(1)
)
SELECT
	Count(*)
FROM
	Parent p
		INNER JOIN CTE_1 c_2 ON p.ParentID = c_2.ParentID
		INNER JOIN CTE_1 c2 ON p.ParentID = c2.ParentID

