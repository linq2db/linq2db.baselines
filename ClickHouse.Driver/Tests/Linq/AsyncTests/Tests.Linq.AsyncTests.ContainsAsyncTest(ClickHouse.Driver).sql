-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				t1.PersonID
			FROM
				Person t1
		)
			THEN true
		ELSE false
	END

