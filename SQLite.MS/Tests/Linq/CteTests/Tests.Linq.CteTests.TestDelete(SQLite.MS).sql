BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CteChild]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CteChild]
(
	[ChildID]  INTEGER NOT NULL,
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [CteChild]
(
	[ChildID],
	[ParentID]
)
VALUES
(1000,0),
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5),
(1006,6),
(1007,7),
(1008,8),
(1009,9)

BeforeExecute
-- SQLite.MS SQLite

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[CteChild] [c_1]
	WHERE
		[c_1].[ParentID] % 2 = 0
)
DELETE FROM
	[CteChild]
WHERE
	 EXISTS (
		SELECT
			[ct].[ParentID]
		FROM
			[CteChild] [c_2]
				INNER JOIN [CTE_1] [ct] ON [ct].[ParentID] = [c_2].[ParentID]
		WHERE
			[CteChild].[ChildID] = [c_2].[ChildID] AND [CteChild].[ParentID] = [c_2].[ParentID]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CteChild]

