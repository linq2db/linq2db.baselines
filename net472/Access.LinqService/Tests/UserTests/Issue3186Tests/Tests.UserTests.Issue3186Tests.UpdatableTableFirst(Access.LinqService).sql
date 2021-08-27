﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [element_services]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [element_services]
(
	[id]                 NVarChar(100) NOT NULL,
	[is_process_service] Bit           NOT NULL,
	[is_deleted]         Bit           NOT NULL,

	CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @id VarWChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Boolean
SET     @is_process_service = True
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb
DECLARE @id VarWChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Boolean
SET     @is_process_service = False
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb

DROP TABLE [component_categories]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [component_categories]
(
	[id]         NVarChar(100) NOT NULL,
	[service_id] NVarChar(100) NOT NULL,
	[is_deleted] Bit           NOT NULL,

	CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @id VarWChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb
DECLARE @id VarWChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb
DECLARE @id VarWChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb
DECLARE @id VarWChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

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
-- Access AccessOleDb

DROP TABLE [components]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_components] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @id VarWChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id VarWChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO [components]
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
-- Access AccessOleDb
DECLARE @id VarWChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id VarWChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO [components]
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
-- Access AccessOleDb
DECLARE @id VarWChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id VarWChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO [components]
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
-- Access AccessOleDb
DECLARE @id VarWChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id VarWChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id VarWChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO [components]
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
-- Access AccessOleDb
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	([component_categories] [ctg]
		INNER JOIN [element_services] [ie] ON ([ie].[id] = [ctg].[service_id]))
		INNER JOIN [components] [cm] ON ([ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = False)
SET
	[ctg].[is_deleted] = @is_deleted
WHERE
	[ie].[id] = 'TestProcessService'

BeforeExecute
-- Access AccessOleDb

DROP TABLE [components]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [component_categories]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [element_services]

