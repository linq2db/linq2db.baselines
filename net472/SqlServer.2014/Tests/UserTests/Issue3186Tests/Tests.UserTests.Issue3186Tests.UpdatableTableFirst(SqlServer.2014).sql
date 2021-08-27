BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[element_services]', N'U') IS NOT NULL)
	DROP TABLE [element_services]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[element_services]', N'U') IS NULL)
	CREATE TABLE [element_services]
	(
		[id]                 NVarChar(100) NOT NULL,
		[is_process_service] Bit           NOT NULL,
		[is_deleted]         Bit           NOT NULL,

		CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
(N'TestProcessService',1,0),
(N'TestElementService',0,0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[component_categories]', N'U') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[component_categories]', N'U') IS NULL)
	CREATE TABLE [component_categories]
	(
		[id]         NVarChar(100) NOT NULL,
		[service_id] NVarChar(100) NOT NULL,
		[is_deleted] Bit           NOT NULL,

		CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(N'TestProcessCategory1',N'TestProcessService',0),
(N'TestProcessCategory2',N'TestProcessService',0),
(N'TestElementCategory1',N'TestElementService',0),
(N'TestElementCategory2',N'TestElementService',0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[components]', N'U') IS NOT NULL)
	DROP TABLE [components]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[components]', N'U') IS NULL)
	CREATE TABLE [components]
	(
		[id]          NVarChar(100) NOT NULL,
		[category_id] NVarChar(100) NOT NULL,
		[service_id]  NVarChar(100) NOT NULL,
		[is_deleted]  Bit           NOT NULL,

		CONSTRAINT [PK_components] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(N'TestProcessComponent1',N'TestProcessCategory1',N'TestProcessService',0),
(N'TestProcessComponent2',N'TestProcessCategory2',N'TestProcessService',0),
(N'TestElementComponent1',N'TestElementCategory1',N'TestElementService',0),
(N'TestElementComponent2',N'TestElementCategory2',N'TestElementService',0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = 1

UPDATE
	[ctg]
SET
	[ctg].[is_deleted] = @is_deleted
FROM
	[component_categories] [ctg]
		INNER JOIN [element_services] [ie] ON [ie].[id] = [ctg].[service_id]
		INNER JOIN [components] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
WHERE
	[ie].[id] = N'TestProcessService'

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[components]', N'U') IS NOT NULL)
	DROP TABLE [components]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[component_categories]', N'U') IS NOT NULL)
	DROP TABLE [component_categories]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[element_services]', N'U') IS NOT NULL)
	DROP TABLE [element_services]

