BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	c_3.ParentID,
	c_3.ChildID
FROM
	(
		SELECT
			c_1.ParentID as ParentID,
			c_1.ChildID as ChildID
		FROM
			Child c_1
		WHERE
			c_1.ParentID = toInt32(1)
		UNION ALL
		SELECT
			c_2.ParentID as ParentID,
			c_2.ChildID + toInt32(1000) as ChildID
		FROM
			Child c_2
		WHERE
			c_2.ParentID = toInt32(3)
	) c_3
WHERE
	c_3.ChildID <> toInt32(1032)

