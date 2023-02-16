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
					WHEN _.MiddleName = '123' THEN toInt32(1)
					ELSE toInt32(0)
				END = CASE
					WHEN CASE
						WHEN _.MiddleName = '1' THEN 'test'
						ELSE _.MiddleName
					END = 'test'
						THEN toInt32(1)
					ELSE toInt32(0)
				END
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

