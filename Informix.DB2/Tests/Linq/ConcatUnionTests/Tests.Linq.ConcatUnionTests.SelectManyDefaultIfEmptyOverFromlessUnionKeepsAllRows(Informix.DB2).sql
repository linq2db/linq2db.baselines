-- Informix.DB2 Informix
SELECT
	p.ParentID,
	x.X
FROM
	Parent p
		LEFT JOIN (
			SELECT
				1::Int as X
			FROM table(set{1})
			UNION ALL
			SELECT
				2::Int as X
			FROM table(set{1})
		) x ON 1=1

