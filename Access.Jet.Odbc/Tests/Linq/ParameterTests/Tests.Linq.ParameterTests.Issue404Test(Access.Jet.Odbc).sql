-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON ([m_1].[Id] = [d].[FirstTableId])
WHERE
	[d].[Usage] = ?

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

