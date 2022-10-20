BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.PersonID
FROM
	Person x
WHERE
	(x.PersonID = toInt32(1) AND x.LastName <> 'test' OR x.FirstName <> 'test' AND x.PersonID = toInt32(2))
GROUP BY
	x.PersonID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	(x.PersonID = toInt32(1) AND x.LastName <> 'test' OR x.FirstName <> 'test' AND x.PersonID = toInt32(2)) AND
	x.PersonID = toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	(x.PersonID = toInt32(1) AND x.LastName <> 'test' OR x.FirstName <> 'test' AND x.PersonID = toInt32(2)) AND
	x.PersonID = toInt32(1)

