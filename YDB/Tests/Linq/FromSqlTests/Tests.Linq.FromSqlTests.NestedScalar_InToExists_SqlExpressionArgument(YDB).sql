-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT PersonID AS `value` FROM Person WHERE PersonID = 1
		) t1
;

SELECT
	p.PersonID as PersonID
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
	p.PersonID as PersonID
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
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
	)

