BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				1 = 0
		)
			THEN true
		ELSE false
	END

