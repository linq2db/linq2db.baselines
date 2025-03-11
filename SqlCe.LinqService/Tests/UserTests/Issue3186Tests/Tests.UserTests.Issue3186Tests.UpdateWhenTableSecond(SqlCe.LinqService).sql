﻿BeforeExecute
-- SqlCe
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[component_categories]
SET
	[is_deleted] = @is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[element_services] [ct]
				INNER JOIN [component_categories] [ctg] ON [ct].[id] = [ctg].[service_id]
				INNER JOIN [Components] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
		WHERE
			[ct].[id] = 'TestProcessService' AND [component_categories].[id] = [ctg].[id]
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> 'TestProcessService'

