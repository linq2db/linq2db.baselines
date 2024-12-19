BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Parent p
		) THEN true
		ELSE false
	END

