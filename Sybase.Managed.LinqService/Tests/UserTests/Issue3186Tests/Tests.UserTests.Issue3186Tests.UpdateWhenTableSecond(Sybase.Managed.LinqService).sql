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
DECLARE @id UniVarChar(18) -- String
SET     @id = 'TestProcessService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(18) -- String
SET     @id = 'TestElementService'
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
DECLARE @id UniVarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestProcessService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestProcessService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestElementService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestElementService'
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
DECLARE @id UniVarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id UniVarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestProcessService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id UniVarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestProcessService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id UniVarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestElementService'
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
-- Sybase.Managed Sybase
DECLARE @id UniVarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id UniVarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id UniVarChar(18) -- String
SET     @service_id = 'TestElementService'
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
-- Sybase.Managed Sybase
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

