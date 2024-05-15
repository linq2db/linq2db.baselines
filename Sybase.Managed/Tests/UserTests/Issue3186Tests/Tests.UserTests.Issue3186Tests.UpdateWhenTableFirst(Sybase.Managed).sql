BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'element_services') IS NOT NULL)
	DROP TABLE [element_services]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'element_services') IS NULL)
	EXECUTE('
		CREATE TABLE [element_services]
		(
			[id]                 NVarChar(100) NOT NULL,
			[is_process_service] Bit           NOT NULL,
			[is_deleted]         Bit           NOT NULL,

			CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
SELECT 'TestProcessService',1,0 UNION ALL
SELECT 'TestElementService',0,0

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'component_categories') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'component_categories') IS NULL)
	EXECUTE('
		CREATE TABLE [component_categories]
		(
			[id]         NVarChar(100) NOT NULL,
			[service_id] NVarChar(100) NOT NULL,
			[is_deleted] Bit           NOT NULL,

			CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Components') IS NOT NULL)
	DROP TABLE [Components]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Components') IS NULL)
	EXECUTE('
		CREATE TABLE [Components]
		(
			[id]          NVarChar(100) NOT NULL,
			[category_id] NVarChar(100) NOT NULL,
			[service_id]  NVarChar(100) NOT NULL,
			[is_deleted]  Bit           NOT NULL,

			CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[component_categories]
SET
	[is_deleted] = @is_deleted
FROM
	[element_services] [sr],
	[Components] [cm]
WHERE
	[sr].[id] = 'TestProcessService' AND
	[sr].[id] = [component_categories].[service_id] AND
	[component_categories].[id] = [cm].[category_id] AND
	[cm].[is_deleted] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> 'TestProcessService'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Components') IS NOT NULL)
	DROP TABLE [Components]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'component_categories') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'element_services') IS NOT NULL)
	DROP TABLE [element_services]

