BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 3
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

