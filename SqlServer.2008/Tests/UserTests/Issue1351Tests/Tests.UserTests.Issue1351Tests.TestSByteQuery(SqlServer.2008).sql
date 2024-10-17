BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[T1351Model]', N'U') IS NOT NULL)
	DROP TABLE [T1351Model]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[T1351Model]', N'U') IS NULL)
	CREATE TABLE [T1351Model]
	(
		[ID]           Int     NOT NULL,
		[TestField]    TinyInt NOT NULL,
		[TestNullable] TinyInt     NULL
	)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[T1351Model]', N'U') IS NOT NULL)
	DROP TABLE [T1351Model]

