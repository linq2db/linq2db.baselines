-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

INSERT ASYNC BULK [tempdb]..[#TempTable](Name)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

