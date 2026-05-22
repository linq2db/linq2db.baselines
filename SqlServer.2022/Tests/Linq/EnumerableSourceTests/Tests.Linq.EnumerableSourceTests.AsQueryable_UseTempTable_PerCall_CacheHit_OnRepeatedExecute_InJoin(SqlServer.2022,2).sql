-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_897b9d9f8638]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_897b9d9f8638](Id, Data)

-- SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_897b9d9f8638] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_897b9d9f8638]

