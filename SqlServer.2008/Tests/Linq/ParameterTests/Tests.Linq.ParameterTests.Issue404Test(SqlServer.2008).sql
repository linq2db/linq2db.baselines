-- SqlServer.2008

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlServer.2008
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlServer.2008
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlServer.2008

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlServer.2008
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlServer.2008
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlServer.2008

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

