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
					WHEN t1.FirstName = t1.FirstName THEN true
					ELSE false
				END = CASE
					WHEN (t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL)
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

