-- SqlCe
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

-- SqlCe
DECLARE @usage Int -- Int32
SET     @usage = 0

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @usage

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

-- SqlCe
DECLARE @usage Int -- Int32
SET     @usage = 1

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @usage

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

-- SqlCe
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

-- SqlCe
DECLARE @usage Int -- Int32
SET     @usage = 0

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @usage

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

-- SqlCe
DECLARE @usage Int -- Int32
SET     @usage = 1

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
	[d].[FirstTableId]
FROM
	[UsageOwner] [m_1]
		INNER JOIN [EnumUsageDetail] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @usage

-- SqlCe
SELECT
	[t1].[Id]
FROM
	[UsageOwner] [t1]

