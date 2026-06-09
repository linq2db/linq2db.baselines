-- YDB Ydb

$CTE_1 = 	SELECT
		person_1.PersonID as entry_ID,
		person_1.FirstName as entry_FirstName,
		person_1.LastName as entry_LastName,
		person_1.MiddleName as entry_MiddleName,
		person_1.Gender as entry_Gender
	FROM
		Person person_1
;

SELECT
	x.entry_FirstName as FirstName,
	x.entry_ID as ID,
	x.entry_LastName as LastName,
	x.entry_MiddleName as MiddleName,
	x.entry_Gender as Gender
FROM
	$CTE_1 x
WHERE
	x.entry_ID = 1

-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
WHERE
	x.PersonID = 1

