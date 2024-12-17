BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Parent p
					LEFT JOIN (
						SELECT
							c_1.ParentID,
							c_1.ChildID,
							ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ParentID) as rn
						FROM
							Child c_1
					) t1 ON t1.ParentID = p.ParentID AND t1.rn <= 1
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

