BeforeExecute
--  Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND 1 = p.ParentID
	)
FROM table(set{1})

BeforeExecute
--  Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND 2 = p.ParentID
	)
FROM table(set{1})

