BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [element_services]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [element_services]
(
	[id]                 NVarChar(100) NOT NULL,
	[is_process_service] Bit           NOT NULL,
	[is_deleted]         Bit           NOT NULL,

	CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Bit -- Boolean
SET     @is_process_service = True
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Bit -- Boolean
SET     @is_process_service = False
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [component_categories]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [component_categories]
(
	[id]         NVarChar(100) NOT NULL,
	[service_id] NVarChar(100) NOT NULL,
	[is_deleted] Bit           NOT NULL,

	CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Components]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_Components] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = False

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = True

UPDATE
	((
		SELECT
			[ct].[id],
			[ctg].[id] as [id_1],
			[ctg].[is_deleted]
		FROM
			[component_categories] [ctg],
			[element_services] [ct]
	) [cross_1]
		INNER JOIN [component_categories] [ctg_1] ON ([cross_1].[id] = [ctg_1].[service_id]))
		INNER JOIN [Components] [cm] ON ([ctg_1].[id] = [cm].[category_id] AND [cm].[is_deleted] = False)
SET
	[cross_1].[is_deleted] = ?
WHERE
	[cross_1].[id] = 'TestProcessService' AND [cross_1].[id_1] = [ctg_1].[id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = True AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = False AND [x].[service_id] <> 'TestProcessService'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Components]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [component_categories]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [element_services]

