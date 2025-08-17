BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[ct]
SET
	[ct].[is_deleted] = @is_deleted
FROM
	[component_categories] [ct]
		INNER JOIN [element_services] [sr] ON [sr].[id] = [ct].[service_id]
		LEFT JOIN [Components] [cm] ON [ct].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
WHERE
	[sr].[id] = N'TestProcessService'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = N'TestProcessService'

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> N'TestProcessService'

