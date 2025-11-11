-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		PRIMARY KEY CLUSTERED ([Name])
	)

INSERT ASYNC BULK [tempdb]..[#TempTable](Name)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

