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
					WHEN _.MiddleName = '123' THEN toUInt8(1)
					ELSE toUInt8(0)
				END = CASE
					WHEN CASE
						WHEN _.MiddleName = '1' THEN 'test'
						ELSE _.MiddleName
					END = 'test'
						THEN toUInt8(1)
					ELSE toUInt8(0)
				END
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

