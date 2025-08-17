BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		person_1.PersonID as entry_ID,
		person_1.FirstName as entry_FirstName,
		person_1.LastName as entry_LastName,
		person_1.MiddleName as entry_MiddleName,
		person_1.Gender as entry_Gender
	FROM
		Person person_1
)
SELECT
	x.entry_FirstName,
	x.entry_ID,
	x.entry_LastName,
	x.entry_MiddleName,
	x.entry_Gender
FROM
	CTE_1 x
WHERE
	x.entry_ID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = 1

