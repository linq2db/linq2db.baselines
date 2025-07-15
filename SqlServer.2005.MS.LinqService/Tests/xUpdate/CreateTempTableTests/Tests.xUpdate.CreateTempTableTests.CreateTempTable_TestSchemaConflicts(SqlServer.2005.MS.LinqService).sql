BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	N'value'
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Id]      Int            NOT NULL,
		[Renamed] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TestTempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	N'value 2'
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TempTable]
(
	[Id],
	[Renamed]
)
VALUES
(
	2,
	N'renamed 2'
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Renamed]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

