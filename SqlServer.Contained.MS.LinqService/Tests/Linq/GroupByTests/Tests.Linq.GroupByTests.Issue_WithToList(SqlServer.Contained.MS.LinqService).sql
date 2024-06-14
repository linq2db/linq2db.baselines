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
SET     @Id = 'e5b994eb-f09e-4159-a5b4-df0fa81f91f8'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = NULL
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 18, 59, 15, 7111809, 0, 0, 7)

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
SET     @Id = '61e520bd-b8f5-4557-8b53-4c3844a1d48c'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = 'e5b994eb-f09e-4159-a5b4-df0fa81f91f8'
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 18, 59, 15, 7111809, 0, 0, 7)

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

SELECT
	[a_Reference].[Id],
	[t1].[ReferenceId]
FROM
	[TestAggregateTable] [t1]
		LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
GROUP BY
	[a_Reference].[Id],
	[t1].[ReferenceId]
ORDER BY
	[t1].[ReferenceId]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'UTC'
DECLARE @Id_1 NVarChar(4000) -- String
SET     @Id_1 = N'UTC'

SELECT
	[t3].[Id],
	[t3].[group_1],
	[t3].[COUNT_1],
	[t3].[c1],
	[t3].[hours],
	[t3].[minutes]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[t2].[Id],
			[t2].[group_1],
			[t2].[hours],
			[t2].[minutes],
			COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [c1]
		FROM
			(
				SELECT
					[t1].[Id],
					[a_Reference].[Id] as [group_1],
					DATEPART(hour, [t1].[DateTime] AT TIME ZONE @Id) as [hours],
					DATEPART(minute, [t1].[DateTime] AT TIME ZONE @Id_1) as [minutes]
				FROM
					[TestAggregateTable] [t1]
						LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
			) [t2]
		GROUP BY
			[t2].[Id],
			[t2].[group_1],
			[t2].[hours],
			[t2].[minutes]
		HAVING
			[t2].[group_1] IS NULL
	) [t3]
ORDER BY
	[t3].[COUNT_1] DESC

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'UTC'
DECLARE @Id_1 NVarChar(4000) -- String
SET     @Id_1 = N'UTC'
DECLARE @key UniqueIdentifier -- Guid
SET     @key = 'e5b994eb-f09e-4159-a5b4-df0fa81f91f8'

SELECT
	[t3].[Id],
	[t3].[group_1],
	[t3].[COUNT_1],
	[t3].[c1],
	[t3].[hours],
	[t3].[minutes]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[t2].[Id],
			[t2].[group_1],
			[t2].[hours],
			[t2].[minutes],
			COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [c1]
		FROM
			(
				SELECT
					[t1].[Id],
					[a_Reference].[Id] as [group_1],
					DATEPART(hour, [t1].[DateTime] AT TIME ZONE @Id) as [hours],
					DATEPART(minute, [t1].[DateTime] AT TIME ZONE @Id_1) as [minutes]
				FROM
					[TestAggregateTable] [t1]
						LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
			) [t2]
		GROUP BY
			[t2].[Id],
			[t2].[group_1],
			[t2].[hours],
			[t2].[minutes]
		HAVING
			[t2].[group_1] = @key
	) [t3]
ORDER BY
	[t3].[COUNT_1] DESC

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

