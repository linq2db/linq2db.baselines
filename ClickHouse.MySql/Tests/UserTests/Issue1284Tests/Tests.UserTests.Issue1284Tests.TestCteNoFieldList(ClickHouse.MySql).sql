-- ClickHouse.MySql ClickHouse

WITH cte AS
(
	SELECT
		x.FirstName as entry_FirstName,
		x.PersonID as entry_ID,
		x.LastName as entry_LastName,
		x.MiddleName as entry_MiddleName,
		x.Gender as entry_Gender
	FROM
		Person x
)
SELECT
	t1.entry_FirstName,
	t1.entry_ID,
	t1.entry_LastName,
	t1.entry_MiddleName,
	t1.entry_Gender
FROM
	cte t1

-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x

