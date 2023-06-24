BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[IsNullOrEmptyTable]', N'U') IS NULL)
	CREATE TABLE [IsNullOrEmptyTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(1,N'   '),
(2,N'')

BeforeExecute
-- SqlServer.2017

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	([p].[Value] IS NULL OR LEN(REPLACE([p].[Value],' ','.')) = 0)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IsNullOrEmptyTable]

