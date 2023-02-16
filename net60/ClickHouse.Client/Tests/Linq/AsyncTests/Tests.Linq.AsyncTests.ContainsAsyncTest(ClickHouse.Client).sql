BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				t1.PersonID = toInt32(1)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

