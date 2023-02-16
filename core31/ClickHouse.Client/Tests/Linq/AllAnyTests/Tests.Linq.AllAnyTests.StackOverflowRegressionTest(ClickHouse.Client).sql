BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

