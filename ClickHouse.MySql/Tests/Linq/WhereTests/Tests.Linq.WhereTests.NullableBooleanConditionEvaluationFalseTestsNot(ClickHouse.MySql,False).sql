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
				1 = 0
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

