BeforeExecute
-- SqlCe

DROP TABLE [element_services]

BeforeExecute
-- SqlCe

CREATE TABLE [element_services]
(
	[id]                 NVarChar(100) NOT NULL,
	[is_process_service] Bit           NOT NULL,
	[is_deleted]         Bit           NOT NULL,

	CONSTRAINT [PK_element_services] PRIMARY KEY ([id])
)

BeforeExecute
-- SqlCe

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
SELECT 'TestProcessService',1,0 UNION ALL
SELECT 'TestElementService',0,0

BeforeExecute
-- SqlCe

DROP TABLE [component_categories]

BeforeExecute
-- SqlCe

CREATE TABLE [component_categories]
(
	[id]         NVarChar(100) NOT NULL,
	[service_id] NVarChar(100) NOT NULL,
	[is_deleted] Bit           NOT NULL,

	CONSTRAINT [PK_component_categories] PRIMARY KEY ([id])
)

BeforeExecute
-- SqlCe

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
SELECT 'TestProcessCategory1','TestProcessService',0 UNION ALL
SELECT 'TestProcessCategory2','TestProcessService',0 UNION ALL
SELECT 'TestElementCategory1','TestElementService',0 UNION ALL
SELECT 'TestElementCategory2','TestElementService',0

BeforeExecute
-- SqlCe

DROP TABLE [Components]

BeforeExecute
-- SqlCe

CREATE TABLE [Components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_Components] PRIMARY KEY ([id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
SELECT 'TestProcessComponent1','TestProcessCategory1','TestProcessService',0 UNION ALL
SELECT 'TestProcessComponent2','TestProcessCategory2','TestProcessService',0 UNION ALL
SELECT 'TestElementComponent1','TestElementCategory1','TestElementService',0 UNION ALL
SELECT 'TestElementComponent2','TestElementCategory2','TestElementService',0

BeforeExecute
-- SqlCe
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[component_categories]
SET
	[is_deleted] = @is_deleted
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[component_categories] [ct]
				INNER JOIN [element_services] [sr] ON [sr].[id] = [ct].[service_id]
				LEFT JOIN [Components] [cm] ON [ct].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
		WHERE
			[sr].[id] = 'TestProcessService' AND [component_categories].[id] = [ct].[id]
	)

BeforeExecute
-- SqlCe

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- SqlCe

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> 'TestProcessService'

BeforeExecute
-- SqlCe

DROP TABLE [Components]

BeforeExecute
-- SqlCe

DROP TABLE [component_categories]

BeforeExecute
-- SqlCe

DROP TABLE [element_services]

