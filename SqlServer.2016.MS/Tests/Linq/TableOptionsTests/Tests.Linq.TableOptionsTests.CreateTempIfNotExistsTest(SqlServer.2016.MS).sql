-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#CreateIfNotExistsTable]

