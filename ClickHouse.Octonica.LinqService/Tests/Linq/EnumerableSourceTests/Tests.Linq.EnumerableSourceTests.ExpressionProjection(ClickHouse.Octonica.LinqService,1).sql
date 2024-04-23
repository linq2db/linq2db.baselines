BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	n.FirstName,
	n.PersonID
FROM
	Person p
		INNER JOIN (
			SELECT 'Janet' AS FirstName, 2 AS PersonID
			UNION ALL
			SELECT 'Doe', 3) n ON p.PersonID = n.PersonID
ORDER BY
	n.PersonID

