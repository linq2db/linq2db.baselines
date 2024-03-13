BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[element_services]', N'U') IS NOT NULL)
	DROP TABLE [element_services]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[element_services]', N'U') IS NULL)
	CREATE TABLE [element_services]
	(
		[id]                 NVarChar(100) NOT NULL,
		[is_process_service] Bit           NOT NULL,
		[is_deleted]         Bit           NOT NULL,

		CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestProcessService'
DECLARE @is_process_service Bit -- Boolean
SET     @is_process_service = 1
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestElementService'
DECLARE @is_process_service Bit -- Boolean
SET     @is_process_service = 0
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[component_categories]', N'U') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[component_categories]', N'U') IS NULL)
	CREATE TABLE [component_categories]
	(
		[id]         NVarChar(100) NOT NULL,
		[service_id] NVarChar(100) NOT NULL,
		[is_deleted] Bit           NOT NULL,

		CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestProcessCategory1'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestProcessCategory2'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestElementCategory1'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestElementCategory2'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Components]', N'U') IS NOT NULL)
	DROP TABLE [Components]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Components]', N'U') IS NULL)
	CREATE TABLE [Components]
	(
		[id]          NVarChar(100) NOT NULL,
		[category_id] NVarChar(100) NOT NULL,
		[service_id]  NVarChar(100) NOT NULL,
		[is_deleted]  Bit           NOT NULL,

		CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestProcessComponent1'
DECLARE @category_id NVarChar(100) -- String
SET     @category_id = N'TestProcessCategory1'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestProcessComponent2'
DECLARE @category_id NVarChar(100) -- String
SET     @category_id = N'TestProcessCategory2'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestElementComponent1'
DECLARE @category_id NVarChar(100) -- String
SET     @category_id = N'TestElementCategory1'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @id NVarChar(100) -- String
SET     @id = N'TestElementComponent2'
DECLARE @category_id NVarChar(100) -- String
SET     @category_id = N'TestElementCategory2'
DECLARE @service_id NVarChar(100) -- String
SET     @service_id = N'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 0

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = N'TestProcessService'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> N'TestProcessService'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Components]', N'U') IS NOT NULL)
	DROP TABLE [Components]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[component_categories]', N'U') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[element_services]', N'U') IS NOT NULL)
	DROP TABLE [element_services]

