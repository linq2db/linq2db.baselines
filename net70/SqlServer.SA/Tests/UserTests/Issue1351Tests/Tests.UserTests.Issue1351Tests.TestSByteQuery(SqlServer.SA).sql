BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [T1351Model]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[T1351Model]', N'U') IS NULL)
	CREATE TABLE [T1351Model]
	(
		[ID]           Int     NOT NULL,
		[TestField]    TinyInt NOT NULL,
		[TestNullable] TinyInt     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [T1351Model]

