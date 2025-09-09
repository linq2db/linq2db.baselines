BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
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
	NOT [cm].[is_deleted]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	[x].[is_deleted] AND [x].[service_id] = 'TestProcessService'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[id],
	[x].[service_id],
	[x].[is_deleted]
FROM
	[component_categories] [x]
WHERE
	NOT [x].[is_deleted] AND [x].[service_id] <> 'TestProcessService'

