-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[##IsGlobalTemporaryTable]

