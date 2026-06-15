-- YDB Ydb

SELECT
	c_3.ParentID as ParentID,
	c_3.ChildID as ChildID
FROM
	(
		SELECT
			c_1.ChildID as ChildID,
			c_1.ParentID as ParentID
		FROM
			Child c_1
		WHERE
			c_1.ParentID = 1
		UNION ALL
		SELECT
			c_2.ChildID + 1000 as ChildID,
			CAST(NULL AS Int32) as ParentID
		FROM
			Child c_2
		WHERE
			c_2.ParentID = 3
	) c_3
WHERE
	c_3.ChildID <> 1032

