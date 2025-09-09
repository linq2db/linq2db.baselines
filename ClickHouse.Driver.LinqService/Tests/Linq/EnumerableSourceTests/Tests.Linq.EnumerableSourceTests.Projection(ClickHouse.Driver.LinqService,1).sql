BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	(
		SELECT 'Janet' AS FirstName, 2 AS ID, NULL AS LastName, NULL AS MiddleName, 'M' AS Gender
		UNION ALL
		SELECT 'Doe', 3, NULL, NULL, 'M') t1

