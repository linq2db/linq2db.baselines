BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	nm.MiddleName
FROM
	(
		SELECT
			lengthUTF8(p.MiddleName) as Length_1,
			p.MiddleName as MiddleName
		FROM
			Person p
	) nm
WHERE
	nm.Length_1 <> 0 OR nm.Length_1 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

