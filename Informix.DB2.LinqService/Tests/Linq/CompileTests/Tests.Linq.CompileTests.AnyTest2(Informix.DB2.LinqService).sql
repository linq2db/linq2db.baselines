BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID = -1
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

