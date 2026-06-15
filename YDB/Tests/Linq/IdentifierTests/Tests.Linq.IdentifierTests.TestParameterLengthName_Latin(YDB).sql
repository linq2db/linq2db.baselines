-- YDB Ydb
DECLARE $abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Int32
SET     $abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	r.FirstName as FirstName,
	r.PersonID as ID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	r.PersonID = $abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

