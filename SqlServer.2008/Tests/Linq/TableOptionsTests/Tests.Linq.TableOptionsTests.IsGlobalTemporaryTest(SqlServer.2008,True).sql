-- SqlServer.2008

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[##IsGlobalTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##IsGlobalTemporaryTable]

