BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	n.ID,
	n.FirstName
FROM
	Person t1
		INNER JOIN (
			SELECT 2 AS ID, 'Janet' AS FirstName
			UNION ALL
			SELECT 3, 'Doe') n ON t1.PersonID = n.ID
ORDER BY
	n.ID

