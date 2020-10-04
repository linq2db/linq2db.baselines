BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.c_1,
	t1.ChildID,
	t1.ParentID,
	t1.Value1
FROM
	Parent p
		LEFT JOIN (
			SELECT
				gr.ParentID as c_1,
				gr.ChildID,
				a_Parent.ParentID,
				a_Parent.Value1
			FROM
				Child gr
					LEFT JOIN Parent a_Parent ON gr.ParentID = a_Parent.ParentID
		) t1 ON p.Value1 = t1.c_1

