-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[n].[ID],
	[n].[TYP_STATUS],
	[n].[NR],
	[n].[DATUM],
	EXISTS(
		SELECT
			*
		FROM
			[CASH] [u]
		WHERE
			[u].[ID_DETAIL] = [n].[ID]
	),
	[a_Status].[STATUS_TYPE_ID],
	[a_Status].[NR]
FROM
	[DETAIL] [n]
		LEFT JOIN [STATUS_DATA] [a_Status] ON [a_Status].[STATUS_TYPE_ID] = [n].[TYP_STATUS] AND [a_Status].[NR] = [n].[NR]
WHERE
	[n].[TYP_STATUS] = 2

