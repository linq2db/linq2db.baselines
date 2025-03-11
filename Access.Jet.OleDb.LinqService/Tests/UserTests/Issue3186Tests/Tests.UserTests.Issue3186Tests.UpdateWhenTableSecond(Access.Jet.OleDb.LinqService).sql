﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	((
		SELECT
			[ct].[id],
			[ctg].[id] as [id_1],
			[ctg].[is_deleted]
		FROM
			[component_categories] [ctg],
			[element_services] [ct]
	) [cross_1]
		INNER JOIN [component_categories] [ctg_1] ON ([cross_1].[id] = [ctg_1].[service_id]))
		INNER JOIN [Components] [cm] ON ([ctg_1].[id] = [cm].[category_id] AND NOT [cm].[is_deleted])
SET
	[cross_1].[is_deleted] = @is_deleted
WHERE
	[cross_1].[id] = 'TestProcessService' AND [cross_1].[id_1] = [ctg_1].[id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[component_categories] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

