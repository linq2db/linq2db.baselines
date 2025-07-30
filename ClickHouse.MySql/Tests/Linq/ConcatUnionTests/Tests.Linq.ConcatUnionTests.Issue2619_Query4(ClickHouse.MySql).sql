BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	item_1.FirstName,
	item_1.PersonID as ID,
	item_1.LastName,
	item_1.MiddleName,
	item_1.Gender
FROM
	Person item_1
UNION ALL
SELECT
	t1.FirstName as FirstName,
	t1.ID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	(
		SELECT
			item_2.FirstName as FirstName,
			item_2.PersonID as ID,
			item_2.LastName as LastName,
			item_2.MiddleName as MiddleName,
			item_2.Gender as Gender
		FROM
			Person item_2
		ORDER BY
			item_2.PersonID
	) t1

