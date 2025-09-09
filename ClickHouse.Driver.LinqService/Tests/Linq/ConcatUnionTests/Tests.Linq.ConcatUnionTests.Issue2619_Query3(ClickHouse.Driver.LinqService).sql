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
		SELECT
			item_1.FirstName as FirstName,
			item_1.PersonID as ID,
			item_1.LastName as LastName,
			item_1.MiddleName as MiddleName,
			item_1.Gender as Gender
		FROM
			Person item_1
		ORDER BY
			item_1.PersonID
	) t1
UNION ALL
SELECT
	item_2.FirstName as FirstName,
	item_2.PersonID as ID,
	item_2.LastName as LastName,
	item_2.MiddleName as MiddleName,
	item_2.Gender as Gender
FROM
	Person item_2

