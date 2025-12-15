-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
	)

INSERT BULK [TempTable](Name)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

