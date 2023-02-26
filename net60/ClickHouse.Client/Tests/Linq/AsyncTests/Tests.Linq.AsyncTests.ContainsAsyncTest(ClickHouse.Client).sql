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
			THEN true
		ELSE false
	END

