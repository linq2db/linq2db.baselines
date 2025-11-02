-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

INSERT ASYNC BULK [TempTable](Name)

-- SqlServer.SA SqlServer.2019

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

