-- YDB Ydb
SELECT
	c_2.ParentID_1 as ParentID,
	c_2.ParentID as ParentID_1,
	c_2.Value1 as Value1
FROM
	Parent t1
		LEFT JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				a_Parent.Value1 as Value1,
				c_1.ParentID as ParentID_1
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
		) c_2 ON t1.Value1 = c_2.ParentID_1

