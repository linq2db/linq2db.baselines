BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	([component_categories] [ct]
		INNER JOIN [element_services] [sr] ON ([sr].[id] = [ct].[service_id]))
		LEFT JOIN [Components] [cm] ON ([ct].[id] = [cm].[category_id] AND NOT [cm].[is_deleted])
SET
	[ct].[is_deleted] = @is_deleted
WHERE
	[sr].[id] = 'TestProcessService'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

