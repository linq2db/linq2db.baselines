BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		person_1.PersonID as entry_ID,
		person_1.FirstName,
		person_1.LastName,
		person_1.MiddleName,
		person_1.Gender
	FROM
		Person person_1
)
SELECT
	x.FirstName,
	x.entry_ID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	CTE_1 x
WHERE
	x.entry_ID = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = toInt32(1)

