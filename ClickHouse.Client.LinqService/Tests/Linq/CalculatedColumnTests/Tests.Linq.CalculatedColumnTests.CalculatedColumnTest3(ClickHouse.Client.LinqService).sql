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
			i.FirstName as FirstName,
			i.PersonID as PersonID,
			i.LastName as LastName,
			i.MiddleName as MiddleName,
			i.Gender as Gender,
			concat(i.LastName, ', ', i.FirstName) as FullName
		FROM
			Person i
	) i_1
WHERE
	i_1.FirstName <> 'John'

