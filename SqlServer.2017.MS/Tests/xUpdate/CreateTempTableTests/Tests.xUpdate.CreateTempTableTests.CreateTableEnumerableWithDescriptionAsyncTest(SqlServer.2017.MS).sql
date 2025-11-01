-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

INSERT ASYNC BULK [TempTable](Name)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [TempTable]

