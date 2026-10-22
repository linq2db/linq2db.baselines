-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t1.value
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) t1
	)

-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t1.value
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) t1
	)

-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t1.value
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = 1
			) t1
	)

