BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = 1 AND p.ParentID = 1
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = 1 AND p.ParentID = 2
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

