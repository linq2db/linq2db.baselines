-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'de'

SELECT
	[m_1].[Id],
	[d].[Lang],
	[d].[Text]
FROM
	[EagerFilterItem] [m_1]
		INNER JOIN [EagerFilterItemText] [d] ON [m_1].[Id] = [d].[ItemId]
WHERE
	[d].[Lang] = @lang

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[EagerFilterItem] [item_1]

