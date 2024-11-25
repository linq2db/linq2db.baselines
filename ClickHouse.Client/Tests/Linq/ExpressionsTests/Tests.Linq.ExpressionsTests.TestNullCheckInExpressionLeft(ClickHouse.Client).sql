BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Person p
			WHERE
				1 = 0
		)
			THEN true
		ELSE false
	END

