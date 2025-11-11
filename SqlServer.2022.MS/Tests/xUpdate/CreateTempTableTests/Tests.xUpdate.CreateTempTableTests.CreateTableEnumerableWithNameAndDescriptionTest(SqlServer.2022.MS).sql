-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
	)

INSERT BULK [TempTable](Name)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

