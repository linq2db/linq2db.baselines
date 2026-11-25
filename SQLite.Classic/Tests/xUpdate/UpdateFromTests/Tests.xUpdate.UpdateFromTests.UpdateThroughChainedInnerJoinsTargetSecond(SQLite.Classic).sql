-- SQLite.Classic SQLite
DECLARE @is_deleted Integer -- Boolean
SET     @is_deleted = 1

UPDATE
	[ComponentCategoryRow]
SET
	[is_deleted] = @is_deleted
FROM
	[ElementServiceRow] [ct]
		INNER JOIN [ComponentCategoryRow] [ctg] ON [ct].[id] = [ctg].[service_id]
		INNER JOIN [ComponentRow] [cm] ON [ctg].[id] = [cm].[category_id] AND NOT [cm].[is_deleted]
WHERE
	[ct].[id] = 'TestProcessService' AND [ComponentCategoryRow].[id] = [ctg].[id]

-- SQLite.Classic SQLite
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

-- SQLite.Classic SQLite
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

