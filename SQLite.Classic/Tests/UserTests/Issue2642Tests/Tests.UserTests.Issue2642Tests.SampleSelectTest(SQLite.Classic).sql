-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[Data]
FROM
	(
		SELECT DISTINCT
			[p].[Id]
		FROM
			[mails] [p]
				INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
		WHERE
			strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')
	) [m_1]
		INNER JOIN [EmailAttachments] [d] ON [m_1].[Id] = [d].[EmailId]

-- SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[AddTime]
FROM
	[mails] [p]
		INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')
ORDER BY
	[p].[AddTime]

