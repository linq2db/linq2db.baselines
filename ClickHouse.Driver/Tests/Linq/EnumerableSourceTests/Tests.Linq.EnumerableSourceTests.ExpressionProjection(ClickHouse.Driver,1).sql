-- ClickHouse.Driver ClickHouse

SELECT
	n.ID,
	n.FirstName
FROM
	Person t1
		INNER JOIN VALUES(
			'ID Nullable(Int32), FirstName Nullable(String)',
			(2, 'Janet'), (3, 'Doe')
		) n ON t1.PersonID = n.ID
ORDER BY
	n.ID

