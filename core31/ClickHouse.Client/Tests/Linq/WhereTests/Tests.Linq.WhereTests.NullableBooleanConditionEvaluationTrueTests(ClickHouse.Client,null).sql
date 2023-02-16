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
				1 = 0
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

