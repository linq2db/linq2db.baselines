BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NULL)
	CREATE TABLE [IsNullOrEmptyTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
SELECT 1,N'   ' UNION ALL
SELECT 2,N''

BeforeExecute
-- SqlServer.2005

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	LEN(REPLACE([p].[Value],' ','.')) = 3

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

