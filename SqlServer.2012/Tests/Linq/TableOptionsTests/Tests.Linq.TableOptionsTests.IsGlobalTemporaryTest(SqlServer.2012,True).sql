-- SqlServer.2012

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[##IsGlobalTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[##IsGlobalTemporaryTable]

