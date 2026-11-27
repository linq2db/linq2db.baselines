-- Access.Jet.Odbc AccessODBC
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = True

UPDATE
	([ComponentCategoryRow] [ct]
		INNER JOIN [ElementServiceRow] [sr] ON ([sr].[id] = [ct].[service_id]))
		INNER JOIN [ComponentRow] [cm] ON ([ct].[id] = [cm].[category_id] AND NOT [cm].[is_deleted])
SET
	[ct].[is_deleted] = ?
WHERE
	[sr].[id] = 'TestProcessService'

-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[ComponentCategoryRow] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

