BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				(CASE
					WHEN _.MiddleName = '123' THEN toUInt8(1)
					ELSE toUInt8(0)
				END = CASE
					WHEN CASE
						WHEN _.MiddleName = '1' THEN 'test'
						ELSE _.MiddleName
					END = 'test'
						THEN toUInt8(1)
					ELSE toUInt8(0)
				END OR CASE
					WHEN _.MiddleName = '123' THEN toUInt8(1)
					ELSE toUInt8(0)
				END IS NULL AND CASE
					WHEN CASE
						WHEN _.MiddleName = '1' THEN 'test'
						ELSE _.MiddleName
					END = 'test'
						THEN toUInt8(1)
					ELSE toUInt8(0)
				END IS NULL)
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

