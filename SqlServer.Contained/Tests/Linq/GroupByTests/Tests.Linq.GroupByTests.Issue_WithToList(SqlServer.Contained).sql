BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
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
-- SqlServer.Contained SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
DECLARE @tz NVarChar(4000) -- String
SET     @tz = N'UTC'

SELECT
	[t3].[Id],
	[t3].[Id_1],
	[t3].[count_1],
	[t3].[percents],
	[t3].[hours],
	[t3].[minutes]
FROM
	(
		SELECT
			COUNT(*) as [count_1],
			[t2].[Id],
			[t2].[Id_1],
			COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [percents],
			[t2].[hours],
			[t2].[minutes]
		FROM
			(
				SELECT
					[t1].[Id],
					[a_Reference].[Id] as [Id_1],
					DATEPART(hour, [t1].[DateTime] AT TIME ZONE @tz) as [hours],
					DATEPART(minute, [t1].[DateTime] AT TIME ZONE @tz) as [minutes]
				FROM
					[TestAggregateTable] [t1]
						LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
			) [t2]
		GROUP BY
			[t2].[Id],
			[t2].[Id_1],
			[t2].[hours],
			[t2].[minutes]
		HAVING
			[t2].[Id_1] IS NULL
	) [t3]
ORDER BY
	[t3].[count_1] DESC

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @tz NVarChar(4000) -- String
SET     @tz = N'UTC'
DECLARE @key UniqueIdentifier -- Guid
SET     @key = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	[t3].[Id],
	[t3].[Id_1],
	[t3].[count_1],
	[t3].[percents],
	[t3].[hours],
	[t3].[minutes]
FROM
	(
		SELECT
			COUNT(*) as [count_1],
			[t2].[Id],
			[t2].[Id_1],
			COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [percents],
			[t2].[hours],
			[t2].[minutes]
		FROM
			(
				SELECT
					[t1].[Id],
					[a_Reference].[Id] as [Id_1],
					DATEPART(hour, [t1].[DateTime] AT TIME ZONE @tz) as [hours],
					DATEPART(minute, [t1].[DateTime] AT TIME ZONE @tz) as [minutes]
				FROM
					[TestAggregateTable] [t1]
						LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
			) [t2]
		GROUP BY
			[t2].[Id],
			[t2].[Id_1],
			[t2].[hours],
			[t2].[minutes]
		HAVING
			[t2].[Id_1] = @key
	) [t3]
ORDER BY
	[t3].[count_1] DESC

