-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2016

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
	)

INSERT ASYNC BULK [TempTable](Name)

-- SqlServer.2016

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

