BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				CASE
					WHEN _.FirstName = _.FirstName
						THEN toInt32(1)
					ELSE toInt32(0)
				END = CASE
					WHEN _.MiddleName <> _.LastName
						THEN toInt32(1)
					ELSE toInt32(0)
				END
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

