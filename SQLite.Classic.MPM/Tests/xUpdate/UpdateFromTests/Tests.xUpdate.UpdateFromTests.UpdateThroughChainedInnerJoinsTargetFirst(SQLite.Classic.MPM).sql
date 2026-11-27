-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @is_deleted Integer -- Boolean
SET     @is_deleted = 1

UPDATE
	[ComponentCategoryRow]
SET
	[is_deleted] = @is_deleted
FROM
	[ElementServiceRow] [sr],
	[ComponentRow] [cm]
WHERE
	[sr].[id] = 'TestProcessService' AND
	[sr].[id] = [ComponentCategoryRow].[service_id] AND
	[ComponentCategoryRow].[id] = [cm].[category_id] AND
	NOT [cm].[is_deleted]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

