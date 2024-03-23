BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [element_services]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [element_services]
(
	[id]                 NVarChar(100) NOT NULL,
	[is_process_service] Bit           NOT NULL,
	[is_deleted]         Bit           NOT NULL,

	CONSTRAINT [PK_element_services] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service  -- Boolean
SET     @is_process_service = 1
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service  -- Boolean
SET     @is_process_service = 0
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [component_categories]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [component_categories]
(
	[id]         NVarChar(100) NOT NULL,
	[service_id] NVarChar(100) NOT NULL,
	[is_deleted] Bit           NOT NULL,

	CONSTRAINT [PK_component_categories] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Components]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Components]
(
	[id]          NVarChar(100) NOT NULL,
	[category_id] NVarChar(100) NOT NULL,
	[service_id]  NVarChar(100) NOT NULL,
	[is_deleted]  Bit           NOT NULL,

	CONSTRAINT [PK_Components] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @id NVarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id NVarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id NVarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite
DECLARE @is_deleted  -- Boolean
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
-- SQLite.MS SQLite

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 1 AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] = 0 AND [x].[service_id] <> 'TestProcessService'

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Components]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [component_categories]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [element_services]

