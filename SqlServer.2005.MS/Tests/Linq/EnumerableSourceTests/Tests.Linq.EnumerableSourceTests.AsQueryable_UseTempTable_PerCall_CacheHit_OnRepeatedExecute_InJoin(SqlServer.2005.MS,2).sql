-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_84ef12d9ad5b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_84ef12d9ad5b]
(
	[Id],
	[Data]
)
SELECT 20,N'Data 20' UNION ALL
SELECT 21,N'Data 21' UNION ALL
SELECT 22,N'Data 22'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_84ef12d9ad5b] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_84ef12d9ad5b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_84ef12d9ad5b]

