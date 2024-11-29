BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue4723Table1]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue4723Table1]', N'U') IS NULL)
	CREATE TABLE [Issue4723Table1]
	(
		[Id]               Int            NOT NULL,
		[ExpressionMethod] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(1,NULL)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue4723Table2]', N'U') IS NULL)
	CREATE TABLE [Issue4723Table2]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(1,N'Value 1'),
(1,N'Value 1'),
(2,N'Value 2')

BeforeExecute
-- SqlServer.2017

SELECT
	[x].[Id],
	[t1].[Association]
FROM
	[Issue4723Table1] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Association].[Value] as [Association]
			FROM
				[Issue4723Table2] [a_Association]
			WHERE
				[a_Association].[Id] = [x].[Id]
		) [t1]
WHERE
	[t1].[Association] IS NOT NULL AND ([t1].[Association] <> N'unknown' OR [t1].[Association] IS NULL)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue4723Table1]

