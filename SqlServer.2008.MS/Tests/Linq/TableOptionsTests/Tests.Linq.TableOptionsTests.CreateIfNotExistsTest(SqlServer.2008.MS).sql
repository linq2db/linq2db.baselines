-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [tempdb]..[#CreateIfNotExistsTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

