-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##temp_table]

-- SqlServer.2012

CREATE TABLE [tempdb]..[##temp_table]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##temp_table] [t1]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[##temp_table]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##temp_table]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##temp_table]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##temp_table]

