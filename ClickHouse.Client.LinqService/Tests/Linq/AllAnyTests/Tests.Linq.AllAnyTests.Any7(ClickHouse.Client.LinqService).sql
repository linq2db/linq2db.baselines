BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child t1
		) THEN true
		ELSE false
	END

