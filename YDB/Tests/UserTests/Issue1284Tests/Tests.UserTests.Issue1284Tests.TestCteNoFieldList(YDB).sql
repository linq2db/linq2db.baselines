-- YDB Ydb

$cte = 	SELECT
		x.FirstName as FirstName,
		x.PersonID as ID,
		x.LastName as LastName,
		x.MiddleName as MiddleName,
		x.Gender as Gender
	FROM
		Person x
;

SELECT
	t1.FirstName as FirstName,
	t1.ID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	$cte t1

-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x

