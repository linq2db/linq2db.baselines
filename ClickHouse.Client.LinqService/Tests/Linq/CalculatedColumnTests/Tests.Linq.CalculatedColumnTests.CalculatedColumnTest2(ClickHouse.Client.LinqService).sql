BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	i.PersonID,
	i.FirstName,
	i.LastName,
	i.MiddleName,
	i.Gender,
	concat(i.LastName, ', ', i.FirstName),
	concat(i.LastName, ', ', i.FirstName)
FROM
	Person i
WHERE
	concat(i.LastName, ', ', i.FirstName) <> 'Pupkin, John'

