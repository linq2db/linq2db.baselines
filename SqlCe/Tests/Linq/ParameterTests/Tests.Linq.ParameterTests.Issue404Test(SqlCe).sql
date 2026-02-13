-- SqlCe

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlCe
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlCe
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlCe

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlCe
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SqlCe
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[Table404One] [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

