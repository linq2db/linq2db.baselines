BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.PersonID,
	Substring(s.LastName, 1, 3)
FROM
	Person s
WHERE
	s.PersonID IN (1, 3)
ORDER BY
	2 DESC

