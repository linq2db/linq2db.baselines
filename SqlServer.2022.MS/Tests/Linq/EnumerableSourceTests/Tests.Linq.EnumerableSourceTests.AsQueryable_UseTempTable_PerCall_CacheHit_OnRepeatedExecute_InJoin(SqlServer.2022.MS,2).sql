-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_b524844ea771]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_b524844ea771](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_b524844ea771] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_b524844ea771]

