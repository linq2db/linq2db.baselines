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
				1 = 0
		)
			THEN true
		ELSE false
	END

