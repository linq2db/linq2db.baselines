BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

