BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TestAggregateTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TestAggregateTable]', N'U') IS NULL)
	CREATE TABLE [TestAggregateTable]
	(
		[Id]          UniqueIdentifier NOT NULL,
		[ReferenceId] UniqueIdentifier     NULL,
		[DateTime]    DateTimeOffset       NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b3e91d1b-1ab7-4946-9dd1-0001f144a2ac'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = NULL
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 19, 17, 6, 9406524, 0, 0, 7)

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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '63c1d0c3-d4c6-4f93-9d51-d041073492a6'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = 'b3e91d1b-1ab7-4946-9dd1-0001f144a2ac'
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 19, 17, 6, 9406524, 0, 0, 7)

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
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'UTC'
DECLARE @Id_1 NVarChar(4000) -- String
SET     @Id_1 = N'UTC'
DECLARE @key UniqueIdentifier -- Guid
SET     @key = 'b3e91d1b-1ab7-4946-9dd1-0001f144a2ac'

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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TestAggregateTable]

