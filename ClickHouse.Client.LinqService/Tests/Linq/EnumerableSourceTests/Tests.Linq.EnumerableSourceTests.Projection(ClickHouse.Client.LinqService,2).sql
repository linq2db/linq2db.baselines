BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	(
		SELECT 'Janet' AS FirstName, toInt32(3) AS PersonID, NULL AS LastName, NULL AS MiddleName, 'M' AS Gender
		UNION ALL
		SELECT 'Doe', toInt32(4), NULL, NULL, 'M') t1

