-- YDB Ydb

$CTE_1 = 	SELECT
		x.FirstName as entry_FirstName,
		x.PersonID as entry_ID,
		x.LastName as entry_LastName,
		x.MiddleName as entry_MiddleName,
		x.Gender as entry_Gender,
		1 as rn
	FROM
		Person x
;

SELECT
	t1.entry_FirstName as FirstName,
	t1.entry_ID as ID,
	t1.entry_LastName as LastName,
	t1.entry_MiddleName as MiddleName,
	t1.entry_Gender as Gender,
	t1.rn as rn
FROM
	$CTE_1 t1
LIMIT 1

-- YDB Ydb

SELECT
	person_1.FirstName as FirstName,
	person_1.PersonID as ID,
	person_1.LastName as LastName,
	person_1.MiddleName as MiddleName,
	person_1.Gender as Gender
FROM
	Person person_1
LIMIT 1

