-- YDB Ydb
DECLARE s Text(1) -- String
SET     s = 'e'u
DECLARE Value Int32
SET     Value = 7
DECLARE Value_1 Int32
SET     Value_1 = 3

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	IF(Unicode::Substring(p.LastName, 0, $Value) IS NULL OR $s IS NULL OR $Value_1 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(p.LastName, 0, $Value), Coalesce($s, ''u), $Value_1 - 1) AS Int32) + 1, 0)) - 1 = 4 AND
	p.PersonID = 2

