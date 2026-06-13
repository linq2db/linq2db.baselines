-- YDB Ydb

SELECT
	item_1.FirstName as FirstName,
	item_1.PersonID as ID,
	item_1.LastName as LastName,
	item_1.MiddleName as MiddleName,
	item_1.Gender as Gender
FROM
	Person item_1
UNION
SELECT
	item_2.FirstName as FirstName,
	item_2.PersonID as ID,
	item_2.LastName as LastName,
	item_2.MiddleName as MiddleName,
	item_2.Gender as Gender
FROM
	Person item_2

