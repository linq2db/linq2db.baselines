-- Access.Ace.Odbc AccessODBC
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = True

UPDATE
	((
		SELECT
			[ct].[id],
			[ctg].[id] as [id_1],
			[ctg].[is_deleted]
		FROM
			[ComponentCategoryRow] [ctg],
			[ElementServiceRow] [ct]
	) [cross_1]
		INNER JOIN [ComponentCategoryRow] [ctg_1] ON ([cross_1].[id] = [ctg_1].[service_id]))
		INNER JOIN [ComponentRow] [cm] ON ([ctg_1].[id] = [cm].[category_id] AND NOT [cm].[is_deleted])
SET
	[cross_1].[is_deleted] = ?
WHERE
	[cross_1].[id] = 'TestProcessService' AND [cross_1].[id_1] = [ctg_1].[id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

-- Access.Ace.Odbc AccessODBC
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

