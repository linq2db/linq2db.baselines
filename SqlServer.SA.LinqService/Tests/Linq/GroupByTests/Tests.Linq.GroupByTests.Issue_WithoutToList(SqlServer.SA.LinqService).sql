BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
DECLARE @tz NVarChar(4000) -- String
SET     @tz = N'UTC'

SELECT
	[m_1].[key_1],
	[d_1].[Id],
	[d_1].[Id_1],
	[d_1].[count_1],
	[d_1].[percents],
	[d_1].[hours],
	[d_1].[minutes]
FROM
	(
		SELECT DISTINCT
			[a_Reference].[Id] as [key_1]
		FROM
			[TestAggregateTable] [t1]
				LEFT JOIN [TestAggregateTable] [a_Reference] ON [t1].[ReferenceId] = [a_Reference].[Id]
		GROUP BY
			[a_Reference].[Id],
			[t1].[ReferenceId]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d].[Id],
				[d].[Id_1],
				COUNT(*) as [count_1],
				COUNT_BIG(*) * 100E0 / SUM(COUNT_BIG(*)) OVER() as [percents],
				[d].[hours],
				[d].[minutes]
			FROM
				(
					SELECT
						[t2].[Id],
						[a_Reference_1].[Id] as [Id_1],
						DATEPART(hour, [t2].[DateTime] AT TIME ZONE @tz) as [hours],
						DATEPART(minute, [t2].[DateTime] AT TIME ZONE @tz) as [minutes]
					FROM
						[TestAggregateTable] [t2]
							LEFT JOIN [TestAggregateTable] [a_Reference_1] ON [t2].[ReferenceId] = [a_Reference_1].[Id]
				) [d]
			GROUP BY
				[d].[Id],
				[d].[Id_1],
				[d].[hours],
				[d].[minutes]
			HAVING
				[d].[Id_1] = [m_1].[key_1] OR [d].[Id_1] IS NULL AND [m_1].[key_1] IS NULL
		) [d_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[a_Reference].[Id]
FROM
	[TestAggregateTable] [group_1]
		LEFT JOIN [TestAggregateTable] [a_Reference] ON [group_1].[ReferenceId] = [a_Reference].[Id]
GROUP BY
	[a_Reference].[Id],
	[group_1].[ReferenceId]

