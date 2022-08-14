BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		person_1.PersonID as ID,
		toInt32(1) as rn,
		person_1.FirstName,
		person_1.LastName,
		person_1.MiddleName,
		person_1.Gender
	FROM
		Person person_1
)
SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	CTE_1 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	person_1.FirstName,
	person_1.PersonID,
	person_1.LastName,
	person_1.MiddleName,
	person_1.Gender
FROM
	Person person_1
LIMIT toInt32(1)

