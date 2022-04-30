BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				CASE
					WHEN t1.MiddleName = '123'
						THEN 't'
					ELSE 'f'
				END = CASE
					WHEN CASE
						WHEN t1.MiddleName = '1' THEN 'test'
						ELSE t1.MiddleName
					END = 'test'
						THEN 't'
					ELSE 'f'
				END
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

