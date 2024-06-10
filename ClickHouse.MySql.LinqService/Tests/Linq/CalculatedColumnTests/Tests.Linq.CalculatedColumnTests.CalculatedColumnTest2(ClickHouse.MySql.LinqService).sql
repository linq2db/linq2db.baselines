BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.FirstName,
	t1.LastName,
	t1.MiddleName,
	t1.Gender,
	concat(t1.LastName, ', ', t1.FirstName),
	concat(t1.LastName, ', ', t1.FirstName)
FROM
	Person t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i_1.PersonID,
	i_1.FirstName,
	i_1.LastName,
	i_1.MiddleName,
	i_1.Gender,
	i_1.FullName,
	i_1.FullName
FROM
	(
		SELECT
			i.LastName as LastName,
			i.FirstName as FirstName,
			i.PersonID as PersonID,
			i.MiddleName as MiddleName,
			i.Gender as Gender,
			concat(i.LastName, ', ', i.FirstName) as FullName
		FROM
			Person i
	) i_1
WHERE
	concat(i_1.LastName, ', ', i_1.FirstName) <> 'Pupkin, John'

