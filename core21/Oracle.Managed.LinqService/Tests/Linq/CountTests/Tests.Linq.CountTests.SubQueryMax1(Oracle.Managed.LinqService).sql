BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Max(t1.cnt)
FROM
	Parent p
		OUTER APPLY (
			SELECT
				Count(*) as cnt
			FROM
				Child c_1
					LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
			WHERE
				a_Parent.ParentID = p.ParentID
		) t1

