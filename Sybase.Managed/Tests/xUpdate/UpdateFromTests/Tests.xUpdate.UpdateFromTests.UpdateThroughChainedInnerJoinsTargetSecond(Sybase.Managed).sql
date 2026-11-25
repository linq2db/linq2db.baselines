-- Sybase.Managed Sybase
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[ComponentCategoryRow]
SET
	[is_deleted] = @is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[ElementServiceRow] [ct]
				INNER JOIN [ComponentCategoryRow] [ctg] ON [ct].[id] = [ctg].[service_id]
				INNER JOIN [ComponentRow] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
		WHERE
			[ct].[id] = 'TestProcessService' AND [ComponentCategoryRow].[id] = [ctg].[id]
	)

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

