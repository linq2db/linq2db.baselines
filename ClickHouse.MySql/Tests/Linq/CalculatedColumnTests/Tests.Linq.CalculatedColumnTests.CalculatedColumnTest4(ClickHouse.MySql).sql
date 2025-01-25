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
	a_PersonDoctor.PersonID,
	a_PersonDoctor.FirstName,
	a_PersonDoctor.LastName,
	a_PersonDoctor.MiddleName,
	a_PersonDoctor.Gender,
	concat(a_PersonDoctor.LastName, ', ', a_PersonDoctor.FirstName),
	concat(a_PersonDoctor.LastName, ', ', a_PersonDoctor.FirstName)
FROM
	Doctor d
		INNER JOIN Person a_PersonDoctor ON d.PersonID = a_PersonDoctor.PersonID

