BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN p.PersonID = 1 THEN true
		ELSE false
	END
FROM
	Person p

