BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				1 = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				-1 = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END
FROM table(set{1})

