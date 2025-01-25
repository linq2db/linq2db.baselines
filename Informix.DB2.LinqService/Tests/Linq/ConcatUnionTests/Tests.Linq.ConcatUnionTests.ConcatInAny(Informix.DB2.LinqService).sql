BeforeExecute
-- Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			p.ParentID
		FROM
			Parent p
		UNION ALL
		SELECT
			p_1.ParentID
		FROM
			Parent p_1
	)
FROM table(set{1})

