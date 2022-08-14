BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Person t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Taxonomy
FROM
	Doctor _
WHERE
	_.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Taxonomy
FROM
	Doctor _
WHERE
	_.PersonID = toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Taxonomy
FROM
	Doctor _
WHERE
	_.PersonID = toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Taxonomy
FROM
	Doctor _
WHERE
	_.PersonID = toInt32(4)

