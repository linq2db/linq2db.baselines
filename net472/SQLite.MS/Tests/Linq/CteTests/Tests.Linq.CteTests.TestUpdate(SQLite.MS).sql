BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CteChild]
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
UPDATE
	[CteChild]
SET
	[ParentID] = [CteChild].[ChildID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CteChild] [c_2]
				INNER JOIN [CTE_1] [ct] ON [ct].[ParentID] = [c_2].[ParentID]
		WHERE
			[CteChild].[ChildID] = [c_2].[ChildID] AND [CteChild].[ParentID] = [c_2].[ParentID]
	)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[c_1].[ChildID]
FROM
	[CteChild] [c_1]
WHERE
	[c_1].[ParentID] % 2 = 0

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CteChild]

