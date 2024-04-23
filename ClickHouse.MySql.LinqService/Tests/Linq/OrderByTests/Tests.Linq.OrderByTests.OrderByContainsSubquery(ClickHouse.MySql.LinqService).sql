BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.PersonID,
	_.LastName,
	CASE
		WHEN _.PersonID IN (1, 3) THEN true
		ELSE false
	END
FROM
	Person _
ORDER BY
	CASE
		WHEN _.PersonID IN (1, 3) THEN true
		ELSE false
	END

