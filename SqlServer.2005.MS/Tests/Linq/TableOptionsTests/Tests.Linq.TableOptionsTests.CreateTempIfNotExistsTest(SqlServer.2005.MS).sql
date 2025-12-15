-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

