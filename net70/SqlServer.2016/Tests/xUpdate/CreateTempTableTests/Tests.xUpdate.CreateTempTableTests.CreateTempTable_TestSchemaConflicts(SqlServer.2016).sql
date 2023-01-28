BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTempTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TestTempTable]', N'U') IS NULL)
	CREATE TABLE [TestTempTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [TempTable]
(
	[Id],
	[Value]
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

INSERT INTO [TempTable]
(
	[Id],
	[Value]
)
VALUES
(
	2,
	N'renamed 2'
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestTempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TempTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestTempTable]

