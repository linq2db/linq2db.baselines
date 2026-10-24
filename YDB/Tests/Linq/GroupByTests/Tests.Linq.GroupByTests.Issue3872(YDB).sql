-- YDB Ydb
SELECT
	MAX(r.PersonID) as Max_1
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID as Max_1
FROM
	Person r_1

