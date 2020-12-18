BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NULL)
	CREATE TABLE [GroupSampleClass]
	(
		[Id1]   Int NOT NULL,
		[Id2]   Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 1
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 2
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 3
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 4
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 5
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 6
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 7
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 8
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 9
DECLARE @Id2 Int -- Int32
SET     @Id2 = 0
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 1

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id1 Int -- Int32
SET     @Id1 = 10
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

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
	@Value_1
)

BeforeExecute
-- SqlServer.2017

SELECT
	GROUPING([t1].[Id1]),
	[t1].[Id1],
	Count(*)
FROM
	(
		SELECT DISTINCT
			[selectParam].[Id1],
			[selectParam].[Id2],
			[selectParam].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [selectParam]
	) [t1]
GROUP BY GROUPING SETS (
	([t1].[Id1], [t1].[Id2]),
	([t1].[Id2]),
	()
)

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

