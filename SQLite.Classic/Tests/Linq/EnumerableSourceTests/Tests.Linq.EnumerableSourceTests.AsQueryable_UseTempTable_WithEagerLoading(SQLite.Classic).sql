-- SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_ea7dc7ddafe2]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_ea7dc7ddafe2]
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

-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			temp.[T_ea7dc7ddafe2] [t1]
				INNER JOIN [Parent] [p] ON [t1].[Id] = [p].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[m_1].[ParentID]

-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	temp.[T_ea7dc7ddafe2] [t1]
		INNER JOIN [Parent] [p] ON [t1].[Id] = [p].[ParentID]
ORDER BY
	[p].[ParentID]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_ea7dc7ddafe2]

