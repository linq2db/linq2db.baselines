-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 1

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 2

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 4

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 1

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	)

