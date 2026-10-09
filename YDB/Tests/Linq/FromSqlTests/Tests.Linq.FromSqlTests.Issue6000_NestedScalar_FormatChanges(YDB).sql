-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT PersonID AS `value` FROM Person WHERE PersonID = 1
		) t1
;

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT PersonID AS `value` FROM Person WHERE PersonID = 2
		) t1
;

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
	)

-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT PersonID AS `value` FROM Person WHERE PersonID = 1
		) t1
;

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
	)

