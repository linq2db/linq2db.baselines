BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TestAggregateTable]', N'U') IS NULL)
	CREATE TABLE [TestAggregateTable]
	(
		[Id]          UniqueIdentifier NOT NULL,
		[ReferenceId] UniqueIdentifier     NULL,
		[DateTime]    DateTimeOffset       NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '0d7c4140-1e3b-4020-8f17-1493667f55dc'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = NULL
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 9, 55, 1231234, 0, 0, 7)

INSERT INTO [TestAggregateTable]
(
	[Id],
	[ReferenceId],
	[DateTime]
)
VALUES
(
	@Id,
	@ReferenceId,
	@DateTime
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '3abf9b85-74cb-4103-a563-ef56476e248f'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = '0d7c4140-1e3b-4020-8f17-1493667f55dc'
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 9, 55, 1231234, 0, 0, 7)

INSERT INTO [TestAggregateTable]
(
	[Id],
	[ReferenceId],
	[DateTime]
)
VALUES
(
	@Id,
	@ReferenceId,
	@DateTime
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @tz NVarChar(4000) -- String
SET     @tz = N'UTC'

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[group_1],
	[d].[COUNT_1],
	[d].[c1],
	[d].[hours],
	[d].[minutes]
FROM
	(
		SELECT DISTINCT
			[a_Reference].[Id]
		FROM
			[TestAggregateTable] [t1]
				LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
		GROUP BY
			[a_Reference].[Id],
			[t1].[ReferenceId],
			[a_Reference].[Id]
	) [m_1]
		CROSS APPLY (
			SELECT
				COUNT(*) as [COUNT_1],
				[t3].[Id],
				[t3].[group_1],
				COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [c1],
				[t3].[hours],
				[t3].[minutes]
			FROM
				(
					SELECT
						[t2].[Id],
						[a_Reference_1].[Id] as [group_1],
						DATEPART(hour, [t2].[DateTime] AT TIME ZONE @tz) as [hours],
						DATEPART(minute, [t2].[DateTime] AT TIME ZONE @tz) as [minutes]
					FROM
						[TestAggregateTable] [t2]
							LEFT JOIN [TestAggregateTable] [a_Reference_1] ON [t2].[ReferenceId] = [a_Reference_1].[Id]
				) [t3]
			GROUP BY
				[t3].[Id],
				[t3].[group_1],
				[t3].[hours],
				[t3].[minutes]
			HAVING
				([t3].[group_1] = [m_1].[Id] OR [t3].[group_1] IS NULL AND [m_1].[Id] IS NULL)
		) [d]
ORDER BY
	[d].[COUNT_1] DESC

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[a_Reference].[Id]
FROM
	[TestAggregateTable] [t1]
		LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
GROUP BY
	[a_Reference].[Id],
	[t1].[ReferenceId],
	[a_Reference].[Id]
ORDER BY
	[t1].[ReferenceId]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

