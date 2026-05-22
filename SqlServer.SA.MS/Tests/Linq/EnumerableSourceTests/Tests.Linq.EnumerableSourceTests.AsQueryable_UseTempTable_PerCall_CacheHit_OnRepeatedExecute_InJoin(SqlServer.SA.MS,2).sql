-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_c9b5f7595369]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c9b5f7595369](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_c9b5f7595369] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_c9b5f7595369]

