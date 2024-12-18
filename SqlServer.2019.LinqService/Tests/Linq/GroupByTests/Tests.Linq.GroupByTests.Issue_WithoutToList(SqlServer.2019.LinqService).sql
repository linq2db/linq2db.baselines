BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TestAggregateTable]', N'U') IS NULL)
	CREATE TABLE [TestAggregateTable]
	(
		[Id]          UniqueIdentifier NOT NULL,
		[ReferenceId] UniqueIdentifier     NULL,
		[DateTime]    DateTimeOffset       NULL
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
DECLARE @tz NVarChar(4000) -- String
SET     @tz = N'UTC'

SELECT
	[m_1].[key_1],
	[d].[Id],
	[d].[group_1],
	[d].[count_1],
	[d].[percents],
	[d].[hours],
	[d].[minutes]
FROM
	(
		SELECT DISTINCT
			[a_Reference].[Id] as [key_1]
		FROM
			[TestAggregateTable] [t1]
				LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id] AND [t1].[ReferenceId] IS NOT NULL
		GROUP BY
			[a_Reference].[Id],
			[t1].[ReferenceId]
	) [m_1]
		CROSS APPLY (
			SELECT
				COUNT(*) as [count_1],
				[t3].[Id],
				[t3].[group_1],
				[t3].[hours],
				[t3].[minutes],
				COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [percents]
			FROM
				(
					SELECT
						[t2].[Id],
						[a_Reference_1].[Id] as [group_1],
						DATEPART(hour, [t2].[DateTime] AT TIME ZONE @tz) as [hours],
						DATEPART(minute, [t2].[DateTime] AT TIME ZONE @tz) as [minutes]
					FROM
						[TestAggregateTable] [t2]
							LEFT JOIN [TestAggregateTable] [a_Reference_1] ON [t2].[ReferenceId] = [a_Reference_1].[Id] AND [t2].[ReferenceId] IS NOT NULL
				) [t3]
			GROUP BY
				[t3].[Id],
				[t3].[group_1],
				[t3].[hours],
				[t3].[minutes]
			HAVING
				[t3].[group_1] = [m_1].[key_1] AND [t3].[group_1] IS NOT NULL AND [m_1].[key_1] IS NOT NULL OR
				[t3].[group_1] IS NULL AND [m_1].[key_1] IS NULL
		) [d]
ORDER BY
	[d].[count_1] DESC

BeforeExecute
-- SqlServer.2019

SELECT
	[a_Reference].[Id]
FROM
	[TestAggregateTable] [group_1]
		LEFT JOIN [TestAggregateTable] [a_Reference] ON [group_1].[ReferenceId] = [a_Reference].[Id] AND [group_1].[ReferenceId] IS NOT NULL
GROUP BY
	[a_Reference].[Id],
	[group_1].[ReferenceId]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

