BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

