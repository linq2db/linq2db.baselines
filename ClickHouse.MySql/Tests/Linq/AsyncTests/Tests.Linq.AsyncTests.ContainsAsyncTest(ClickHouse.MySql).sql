-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				t1.PersonID as ID
			FROM
				Person t1
		)
			THEN true
		ELSE false
	END

