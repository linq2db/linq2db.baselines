BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			p_1.ParentID = a_Children.ParentID
	)
FROM
	(
		SELECT FIRST 5
			p.ParentID
		FROM
			Parent p
	) p_1
ORDER BY
	p_1.ParentID DESC

