-- YDB Ydb
DECLARE $filter Text(6) -- String
SET     $filter = '%test%'u
DECLARE $filter_1 Text(6) -- String
SET     $filter_1 = '%test%'u

SELECT
	q.Id as Id,
	q.Name as Name,
	q.ContactEmail as ContactEmail,
	Coalesce(q.Enabled, false) as IsEnabled
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client'u AND (q.Name LIKE $filter ESCAPE '~'s OR q.ContactEmail LIKE $filter_1 ESCAPE '~'s)

