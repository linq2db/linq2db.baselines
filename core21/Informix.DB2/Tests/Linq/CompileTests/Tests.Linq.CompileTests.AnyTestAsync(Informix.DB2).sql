BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = -1
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

