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

DROP TABLE [components]

BeforeExecute
-- SqlCe

CREATE TABLE [components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_components] PRIMARY KEY ([id])
)

BeforeExecute
-- SqlCe

INSERT INTO [components]
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
	[component_categories].[is_deleted] = @is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[component_categories] [ctg]
				INNER JOIN [element_services] [ie] ON [ie].[id] = [ctg].[service_id]
				INNER JOIN [components] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
		WHERE
			[ie].[id] = 'TestProcessService' AND [component_categories].[id] = [ctg].[id]
	)

BeforeExecute
-- SqlCe

DROP TABLE [components]

BeforeExecute
-- SqlCe

DROP TABLE [component_categories]

BeforeExecute
-- SqlCe

DROP TABLE [element_services]

