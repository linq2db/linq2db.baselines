BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[ctg]
SET
	[ctg].[is_deleted] = @is_deleted
FROM
	[element_services] [ct]
		INNER JOIN [component_categories] [ctg] ON [ct].[id] = [ctg].[service_id]
		INNER JOIN [Components] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
WHERE
	[ct].[id] = N'TestProcessService'

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = N'TestProcessService'

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> N'TestProcessService'

