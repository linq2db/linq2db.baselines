-- YDB Ydb

SELECT DISTINCT
	c_2.Key_1 as Key_1
FROM
	Parent gg
		LEFT JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as Key_1
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		) c_2 ON gg.ParentID = c_2.ParentID

