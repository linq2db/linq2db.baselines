BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	x.PersonID + y.item
FROM
	Person x
		CROSS JOIN (
			SELECT 1 AS item
			UNION ALL
			SELECT 3) y

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

