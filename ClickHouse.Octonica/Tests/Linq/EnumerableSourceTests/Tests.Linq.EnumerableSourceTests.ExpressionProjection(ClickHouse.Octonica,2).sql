BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	n.PersonID,
	n.FirstName
FROM
	Person t1
		INNER JOIN (
			SELECT 3 AS PersonID, 'Janet' AS FirstName
			UNION ALL
			SELECT 4, 'Doe') n ON t1.PersonID = n.PersonID
ORDER BY
	n.PersonID

