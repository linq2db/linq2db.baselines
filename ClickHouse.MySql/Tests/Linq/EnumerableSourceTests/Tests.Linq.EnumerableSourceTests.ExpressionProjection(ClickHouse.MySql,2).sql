-- ClickHouse.MySql ClickHouse

SELECT
	n.ID,
	n.FirstName
FROM
	Person t1
		INNER JOIN VALUES('ID Nullable(Int32), FirstName Nullable(String)', (3, 'Janet'), (4, 'Doe')) n ON t1.PersonID = n.ID
ORDER BY
	n.ID

