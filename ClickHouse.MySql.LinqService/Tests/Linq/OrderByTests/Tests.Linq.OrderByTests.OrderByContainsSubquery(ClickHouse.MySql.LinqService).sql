BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.LastName,
	CASE
		WHEN t1.PersonID IN (1, 3) THEN true
		ELSE false
	END
FROM
	Person t1
ORDER BY
	CASE
		WHEN t1.PersonID IN (1, 3) THEN true
		ELSE false
	END

