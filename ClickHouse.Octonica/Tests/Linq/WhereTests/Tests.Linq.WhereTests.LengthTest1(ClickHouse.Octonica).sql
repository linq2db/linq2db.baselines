BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	nm.MiddleName
FROM
	(
		SELECT
			CHAR_LENGTH(p.MiddleName) as Value_1,
			p.MiddleName as MiddleName
		FROM
			Person p
	) nm
WHERE
	nm.Value_1 <> 0 OR nm.Value_1 IS NULL

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

