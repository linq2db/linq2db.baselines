-- YDB Ydb

/* query 1
query 2 */
SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.LastName = 'a'u AND p.FirstName = 'a'u

