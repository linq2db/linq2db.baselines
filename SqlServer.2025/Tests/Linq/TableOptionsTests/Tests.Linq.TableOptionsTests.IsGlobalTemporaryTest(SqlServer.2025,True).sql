-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[##IsGlobalTemporaryTable]

