-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT MiddleName AS `value` FROM Person WHERE PersonID = 4
		) t1
;

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NULL
	) OR p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NOT NULL
	)

-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT MiddleName AS `value` FROM Person WHERE PersonID = 4
		) t1
;

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NULL
	) OR p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NOT NULL
	)

-- YDB Ydb
$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT MiddleName AS `value` FROM Person WHERE PersonID = 4
		) t1
;

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NULL
	) OR p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
		WHERE
			t2.value_1 IS NOT NULL
	)

