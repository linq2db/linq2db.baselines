BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 1000 AND [Parent].[Value1] IS NULL OR
	[Parent].[ParentID] = 1001 AND [Parent].[Value1] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

