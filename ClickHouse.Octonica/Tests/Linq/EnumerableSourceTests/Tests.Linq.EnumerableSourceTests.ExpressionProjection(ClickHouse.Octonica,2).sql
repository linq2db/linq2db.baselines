BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	n.FirstName,
	n.PersonID
FROM
	Person t1
		INNER JOIN (
			SELECT 'Janet' AS FirstName, 3 AS PersonID
			UNION ALL
			SELECT 'Doe', 4) n ON t1.PersonID = n.PersonID
ORDER BY
	n.PersonID

