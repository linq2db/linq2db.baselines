BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'en'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

