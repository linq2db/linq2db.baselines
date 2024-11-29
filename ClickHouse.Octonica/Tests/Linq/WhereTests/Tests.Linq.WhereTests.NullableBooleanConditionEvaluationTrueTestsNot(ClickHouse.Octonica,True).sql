BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Person t1
			WHERE
				1 = 0
		)
			THEN true
		ELSE false
	END

