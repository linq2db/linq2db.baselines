﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[TestAggregateTable]', N'U') IS NULL)
	CREATE TABLE [TestAggregateTable]
	(
		[Id]          UniqueIdentifier NOT NULL,
		[ReferenceId] UniqueIdentifier     NULL,
		[DateTime]    DateTimeOffset       NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '6184c3e4-0e6c-4988-b29c-4493fe5dbd37'
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = '09b9398e-75e1-4795-8ba2-ff1f1f71bf7b'
DECLARE @ReferenceId UniqueIdentifier -- Guid
SET     @ReferenceId = '6184c3e4-0e6c-4988-b29c-4493fe5dbd37'
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
-- SqlServer.2019.MS SqlServer.2019
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
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TestAggregateTable]

