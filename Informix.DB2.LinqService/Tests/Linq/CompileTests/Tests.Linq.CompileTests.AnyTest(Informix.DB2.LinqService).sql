BeforeExecute
--  Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = 1
	)
FROM table(set{1})

BeforeExecute
--  Informix.DB2 Informix

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = -1
	)
FROM table(set{1})

