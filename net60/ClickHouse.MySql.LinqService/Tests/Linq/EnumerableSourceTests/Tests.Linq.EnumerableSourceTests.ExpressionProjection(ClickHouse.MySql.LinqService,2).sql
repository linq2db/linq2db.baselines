BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	n.FirstName,
	n.PersonID
FROM
	Person p
		INNER JOIN (
			SELECT 'Janet' AS FirstName, toInt32(3) AS PersonID
			UNION ALL
			SELECT 'Doe', toInt32(4)) n ON p.PersonID = n.PersonID
ORDER BY
	n.PersonID

