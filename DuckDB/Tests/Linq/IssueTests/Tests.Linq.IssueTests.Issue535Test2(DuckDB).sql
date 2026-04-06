-- DuckDB
DECLARE $filter NVarChar(6) -- String
SET     $filter = '%test%'
DECLARE $filter_1 NVarChar(6) -- String
SET     $filter_1 = '%test%'

SELECT
	q.Id,
	q.Name,
	q.ContactEmail,
	Coalesce(q.Enabled, False)
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client' AND (q.Name LIKE CAST($filter AS VARCHAR) ESCAPE '~' OR q.ContactEmail LIKE CAST($filter_1 AS VARCHAR) ESCAPE '~')

