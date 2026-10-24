-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t1
		WHERE
			t1.value IS NULL
	) OR
	p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t2
		WHERE
			t2.value IS NOT NULL
	)

-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t1
		WHERE
			t1.value IS NULL
	) OR
	p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t2
		WHERE
			t2.value IS NOT NULL
	)

-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL AND 1 IN (
		SELECT
			1
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t1
		WHERE
			t1.value IS NULL
	) OR
	p.MiddleName IS NOT NULL AND p.MiddleName IN (
		SELECT
			t2.value
		FROM
			(
				SELECT MiddleName AS "value" FROM Person WHERE PersonID = 4
			) t2
		WHERE
			t2.value IS NOT NULL
	)

