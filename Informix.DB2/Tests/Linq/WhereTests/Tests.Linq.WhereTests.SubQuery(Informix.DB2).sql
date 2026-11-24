-- Informix.DB2 Informix
SELECT
	((t.ParentID * 1000) / 1000)::Int
FROM
	Child t
WHERE
	t.ParentID * 1000 > 2000

