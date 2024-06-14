BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestAggregateTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TestAggregateTable]', N'U') IS NULL)
	CREATE TABLE [TestAggregateTable]
	(
		[Id]          UniqueIdentifier NOT NULL,
		[ReferenceId] UniqueIdentifier     NULL,
		[DateTime]    DateTimeOffset       NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b2d114e3-9609-4123-b01f-f806c66a4731'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = NULL
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 19, 29, 59, 2206456, 0, 0, 7)

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '80b8a8de-9208-4e5f-9bd3-ff151e0f9e58'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = 'b2d114e3-9609-4123-b01f-f806c66a4731'
DECLARE @DateTime DateTimeOffset
SET     @DateTime = DATETIMEOFFSETFROMPARTS(2024, 6, 14, 19, 29, 59, 2206456, 0, 0, 7)

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'UTC'
DECLARE @Id_1 NVarChar(4000) -- String
SET     @Id_1 = N'UTC'

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
						DATEPART(hour, [t2].[DateTime] AT TIME ZONE @Id) as [hours],
						DATEPART(minute, [t2].[DateTime] AT TIME ZONE @Id_1) as [minutes]
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
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestAggregateTable]

