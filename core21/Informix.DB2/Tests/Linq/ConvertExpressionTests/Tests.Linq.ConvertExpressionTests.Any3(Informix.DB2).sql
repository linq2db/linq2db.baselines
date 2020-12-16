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
				EXISTS(
					SELECT
						*
					FROM
						Child c_1
					WHERE
						p.ParentID = c_1.ParentID AND c_1.ParentID > 1
				)
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

