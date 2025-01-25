BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	n.PersonID,
	n.FirstName
FROM
	Person t1
		INNER JOIN (
			SELECT 2 AS PersonID, 'Janet' AS FirstName
			UNION ALL
			SELECT 3, 'Doe') n ON t1.PersonID = n.PersonID
ORDER BY
	n.PersonID

