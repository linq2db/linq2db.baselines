-- YDB Ydb
DECLARE $s Text(1) -- String
SET     $s = 'e'u
DECLARE $n2 Int32
SET     $n2 = 5
DECLARE $n1 Int32
SET     $n1 = 2

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	(Unicode::Find(Unicode::Substring(p.LastName, 0, $n2), $s, $n1) + 1) - 1 = 4 AND
	p.PersonID = 2

