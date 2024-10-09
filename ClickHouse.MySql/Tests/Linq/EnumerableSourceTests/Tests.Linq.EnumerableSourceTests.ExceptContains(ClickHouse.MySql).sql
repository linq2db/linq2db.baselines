BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN r.PersonID IN (1, 2, 3) THEN true
		ELSE false
	END
FROM
	Person r

