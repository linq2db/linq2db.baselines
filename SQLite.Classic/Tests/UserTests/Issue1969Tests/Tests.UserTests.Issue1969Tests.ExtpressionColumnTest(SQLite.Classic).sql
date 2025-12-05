-- SQLite.Classic SQLite

SELECT
	[c_1].[ID],
	[c_1].[NAME],
	(
		SELECT
			COUNT(*)
		FROM
			[KOMPO] [k_1]
		WHERE
			[k_1].[NUMBER] = [c_1].[ID]
	)
FROM
	[KOMPO] [t1]
		INNER JOIN [CONFIG] [c_1] ON [c_1].[ID] = [t1].[NUMBER]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[KOMPO] [k_2]
		WHERE
			[k_2].[NUMBER] = [c_1].[ID]
	) > 1

