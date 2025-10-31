-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#CreateIfNotExistsTable]

