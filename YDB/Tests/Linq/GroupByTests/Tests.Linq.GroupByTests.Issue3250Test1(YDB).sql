-- YDB Ydb

SELECT
	Unwrap(CAST(g_2.Message AS Text)) || ' items have not been processed, e.g. #'u || Coalesce(CAST(g_2.Message_1 AS Text), ''u) || '.'u as Message
FROM
	(
		SELECT
			COUNT(*) as Message,
			MIN(g_1.PersonID) as Message_1
		FROM
			Person g_1
		WHERE
			g_1.LastName <> 'ERROR'u
	) g_2
WHERE
	g_2.Message > 0

