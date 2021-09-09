﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [element_services]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [element_services]
(
	[id]                 NVarChar(100) NOT NULL,
	[is_process_service] Bit           NOT NULL,
	[is_deleted]         Bit           NOT NULL,

	CONSTRAINT [PK_element_services] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [component_categories]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [component_categories]
(
	[id]         NVarChar(100) NOT NULL,
	[service_id] NVarChar(100) NOT NULL,
	[is_deleted] Bit           NOT NULL,

	CONSTRAINT [PK_component_categories] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

DROP TABLE [components]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_components] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bit -- Boolean
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bit -- Boolean
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @is_deleted Bit -- Boolean
SET     @is_deleted = True

UPDATE
	([component_categories] [t1]
		INNER JOIN [element_services] [ctg] ON ([ctg].[id] = [t1].[service_id]))
		INNER JOIN [components] [cm] ON ([t1].[id] = [cm].[category_id] AND [cm].[is_deleted] = False)
SET
	[t1].[is_deleted] = ?
WHERE
	[ctg].[id] = 'TestProcessService'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = True AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = False AND [x].[service_id] <> 'TestProcessService'

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [components]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [component_categories]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [element_services]

