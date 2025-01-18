BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'de'

SELECT
	[m_1].[Id],
	[d].[Lang],
	[d].[Text]
FROM
	[Item] [m_1]
		INNER JOIN [ItemText] [d] ON [m_1].[Id] = [d].[ItemId]
WHERE
	[d].[Lang] = @lang

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

