BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [T1351Model]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[T1351Model]', N'U') IS NULL)
	CREATE TABLE [T1351Model]
	(
		[ID]           Int     NOT NULL,
		[TestField]    TinyInt NOT NULL,
		[TestNullable] TinyInt     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	([t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [T1351Model]

