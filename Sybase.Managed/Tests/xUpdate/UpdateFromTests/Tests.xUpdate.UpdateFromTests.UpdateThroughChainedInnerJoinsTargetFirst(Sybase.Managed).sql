-- Sybase.Managed Sybase
DECLARE @is_deleted Bit -- Boolean
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
	[cm].[is_deleted] = 0

-- Sybase.Managed Sybase
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = 'TestProcessService'

-- Sybase.Managed Sybase
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> 'TestProcessService'

