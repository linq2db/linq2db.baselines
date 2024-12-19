BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4723Table1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue4723Table1]', N'U') IS NULL)
	CREATE TABLE [Issue4723Table1]
	(
		[Id]               Int            NOT NULL,
		[ExpressionMethod] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod NVarChar(4000) -- String
SET     @ExpressionMethod = NULL

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(
	@Id,
	@ExpressionMethod
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue4723Table2]', N'U') IS NULL)
	CREATE TABLE [Issue4723Table2]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Value 2'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t2].[Id],
	(
		SELECT TOP (1)
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t2].[Id]
	),
	[t1].[Association]
FROM
	[Issue4723Table1] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Association].[Value] as [Association]
			FROM
				[Issue4723Table2] [a_Association]
			WHERE
				[a_Association].[Id] = [t2].[Id]
		) [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4723Table1]

