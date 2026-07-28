

-- SQLite.MS SQLite
SELECT
	[m_1].[Id],
	[d].[EntryCount]
FROM
	(
		SELECT DISTINCT
			[a_Item].[Id]
		FROM
			[Issue4624ItemTicketDates] [p]
				INNER JOIN [Issue4624Items] [a_Item] ON [p].[ItemId] = [a_Item].[Id]
		WHERE
			[p].[Id] < 1000
	) [m_1]
		INNER JOIN [Issue4624ItemTicketDates] [d] ON [m_1].[Id] = [d].[ItemId]



-- SQLite.MS SQLite
SELECT
	[p_1].[Id],
	[p_1].[AclItemName],
	Coalesce((
		SELECT
			SUM([a_Entries].[EntriesCount])
		FROM
			[Issue4624Entry] [a_Entries]
		WHERE
			[p_1].[Id] = [a_Entries].[AclItemId]
	), 0)
FROM
	(
		SELECT DISTINCT
			[a_Item].[Id],
			[a_Item].[Name] as [AclItemName]
		FROM
			[Issue4624ItemTicketDates] [p]
				INNER JOIN [Issue4624Items] [a_Item] ON [p].[ItemId] = [a_Item].[Id]
		WHERE
			[p].[Id] < 1000
	) [p_1]



