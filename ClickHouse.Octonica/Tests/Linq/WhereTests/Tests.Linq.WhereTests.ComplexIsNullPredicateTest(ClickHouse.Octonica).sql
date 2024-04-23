BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				CASE
					WHEN _.MiddleName = '123' THEN true
					ELSE false
				END = CASE
					WHEN (_.MiddleName = '1' OR _.MiddleName = 'test' AND (_.MiddleName <> '1' OR _.MiddleName IS NULL))
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

