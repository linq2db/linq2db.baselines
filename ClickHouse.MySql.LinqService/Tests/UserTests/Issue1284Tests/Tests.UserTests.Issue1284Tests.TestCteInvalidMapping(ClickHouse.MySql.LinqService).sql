BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		x.FirstName as entry_FirstName,
		x.PersonID as entry_ID,
		x.LastName as entry_LastName,
		x.MiddleName as entry_MiddleName,
		x.Gender as entry_Gender,
		1 as rn
	FROM
		Person x
)
SELECT
	t1.entry_FirstName,
	t1.entry_ID,
	t1.entry_LastName,
	t1.entry_MiddleName,
	t1.entry_Gender,
	t1.rn
FROM
	CTE_1 t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	person_1.FirstName,
	person_1.PersonID,
	person_1.LastName,
	person_1.MiddleName,
	person_1.Gender
FROM
	Person person_1
LIMIT 1

