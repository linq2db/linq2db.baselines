BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				CASE
					WHEN t1.MiddleName = '123' THEN true
					ELSE false
				END = CASE
					WHEN t1.MiddleName = '1' OR t1.MiddleName = 'test' AND (t1.MiddleName <> '1' OR t1.MiddleName IS NULL)
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

