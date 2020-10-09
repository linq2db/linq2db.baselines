BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	p_1.ParentID, 
	p_1.Sum_2
FROM
	( 
		SELECT 
			(
				SELECT 
					Sum(t_1.ParentID)
				FROM
					Child t_1
				WHERE
					p.ParentID = t_1.ParentID AND t_1.ParentID > 0
			) / 2 as Sum_1, 
			p.ParentID, 
			(
				SELECT 
					Sum(t.ParentID)
				FROM
					Child t
				WHERE
					p.ParentID = t.ParentID AND t.ParentID > 0
			) as Sum_2
		FROM
			Parent p
	) p_1
WHERE
	p_1.Sum_1 > 1

