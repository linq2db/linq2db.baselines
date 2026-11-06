-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
	) t1

