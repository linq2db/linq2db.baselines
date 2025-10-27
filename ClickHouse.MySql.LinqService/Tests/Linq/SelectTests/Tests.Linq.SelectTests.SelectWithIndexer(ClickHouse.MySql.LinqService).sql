BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.FirstName,
	x.LastName,
	x.Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p.PersonID DESC) - toInt64(1) as Index_1,
			p.FirstName as FirstName,
			p.LastName as LastName,
			p.PersonID as PersonID
		FROM
			Person p
	) x
WHERE
	x.Index_1 > toInt64(0)
ORDER BY
	x.PersonID DESC

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

