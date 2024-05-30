BeforeExecute
-- ClickHouse.Client ClickHouse

WITH cte AS
(
	SELECT
		x.FirstName,
		x.PersonID as ID,
		x.LastName,
		x.MiddleName,
		x.Gender
	FROM
		Person x
)
SELECT
	t1.FirstName,
	t1.ID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	cte t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x

