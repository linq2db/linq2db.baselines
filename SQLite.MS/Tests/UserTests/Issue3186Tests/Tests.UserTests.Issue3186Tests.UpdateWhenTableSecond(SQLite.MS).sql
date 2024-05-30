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

INSERT INTO [element_services]
(
	[id],
	[is_process_service],
	[is_deleted]
)
VALUES
('TestProcessService',1,0),
('TestElementService',0,0)

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

INSERT INTO [component_categories]
(
	[id],
	[service_id],
	[is_deleted]
)
VALUES
('TestProcessCategory1','TestProcessService',0),
('TestProcessCategory2','TestProcessService',0),
('TestElementCategory1','TestElementService',0),
('TestElementCategory2','TestElementService',0)

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

INSERT INTO [Components]
(
	[id],
	[category_id],
	[service_id],
	[is_deleted]
)
VALUES
('TestProcessComponent1','TestProcessCategory1','TestProcessService',0),
('TestProcessComponent2','TestProcessCategory2','TestProcessService',0),
('TestElementComponent1','TestElementCategory1','TestElementService',0),
('TestElementComponent2','TestElementCategory2','TestElementService',0)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @is_deleted  -- Boolean
SET     @is_deleted = 1

UPDATE
	[component_categories]
SET
	[is_deleted] = @is_deleted
FROM
	[element_services] [ct]
		INNER JOIN [component_categories] [ctg] ON [ct].[id] = [ctg].[service_id]
		INNER JOIN [Components] [cm] ON [ctg].[id] = [cm].[category_id] AND [cm].[is_deleted] = 0
WHERE
	[ct].[id] = 'TestProcessService' AND [component_categories].[id] = [ctg].[id]

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

