-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_81f747c5550c]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_81f747c5550c]
(
	[Id],
	[Data]
)
VALUES
(1,'p1'),
(2,'p2'),
(3,'p3'),
(4,'p4'),
(5,'p5'),
(6,'p6'),
(7,'p7')

-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			temp.[T_81f747c5550c] [t1]
				INNER JOIN [Parent] [p] ON [t1].[Id] = [p].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[m_1].[ParentID]

-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	temp.[T_81f747c5550c] [t1]
		INNER JOIN [Parent] [p] ON [t1].[Id] = [p].[ParentID]
ORDER BY
	[p].[ParentID]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_81f747c5550c]

