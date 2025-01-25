BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [GroupSampleClass]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NULL)
	CREATE TABLE [GroupSampleClass]
	(
		[Id1]   Int NOT NULL,
		[Id2]   Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 1
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 2
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 3
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 4
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 5
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 6
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 7
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 8
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 9
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id1 Int -- Int32
SET     @Id1 = 10
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(
	@Id1,
	@Id2,
	@Value
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[g_3].[Id1],
	[g_3].[COUNT_1]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			GROUPING([g_2].[Id1]) as [c1],
			[g_2].[Id1]
		FROM
			(
				SELECT DISTINCT
					[g_1].[Id1],
					[g_1].[Id2],
					[g_1].[Value] as [Value_1]
				FROM
					[GroupSampleClass] [g_1]
			) [g_2]
		GROUP BY GROUPING SETS (
			([g_2].[Id1], [g_2].[Id2]),
			([g_2].[Id2]),
			()
		)
	) [g_3]
WHERE
	([g_3].[COUNT_1] > 0 OR [g_3].[c1] = 1)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [GroupSampleClass]

