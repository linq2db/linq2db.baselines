BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#CreateIfNotExistsTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#CreateIfNotExistsTable]

