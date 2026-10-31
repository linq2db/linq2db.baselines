-- Access.Ace.OleDb AccessOleDb
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	([component_categories] [ct]
		INNER JOIN [element_services] [sr] ON ([sr].[id] = [ct].[service_id]))
		LEFT JOIN (
			SELECT
				[t1].[category_id]
			FROM
				[Components] [t1]
			WHERE
				NOT [t1].[is_deleted]
		) [cm] ON ([ct].[id] = [cm].[category_id])
SET
	[ct].[is_deleted] = @is_deleted
WHERE
	[sr].[id] = 'TestProcessService'

-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

-- Access.Ace.OleDb AccessOleDb
SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

