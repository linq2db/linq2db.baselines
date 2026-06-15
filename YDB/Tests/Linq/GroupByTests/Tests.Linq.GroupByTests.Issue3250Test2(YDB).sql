-- YDB Ydb

SELECT
	Unwrap(CAST(COUNT(*) AS Text)) || ' items have not been processed, e.g. #'u || Coalesce(CAST(MIN(s.PersonID) AS Text), ''u) || '.'u as Message
FROM
	Person s
WHERE
	s.LastName <> 'ERROR'u
HAVING
	COUNT(*) > 0

