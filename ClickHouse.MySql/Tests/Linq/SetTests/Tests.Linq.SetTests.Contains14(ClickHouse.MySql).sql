-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID = 1
		)
			THEN true
		ELSE false
	END

-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN 2 IN (
			SELECT
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID = 1
		)
			THEN true
		ELSE false
	END

