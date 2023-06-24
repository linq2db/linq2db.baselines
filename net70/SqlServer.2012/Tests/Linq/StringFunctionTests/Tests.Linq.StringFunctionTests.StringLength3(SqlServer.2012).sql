BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NULL)
	CREATE TABLE [IsNullOrEmptyTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(1,N'x   '),
(2,N'xxxx ')

BeforeExecute
-- SqlServer.2012

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	LEN(REPLACE([p].[Value],' ','.')) = 4

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

