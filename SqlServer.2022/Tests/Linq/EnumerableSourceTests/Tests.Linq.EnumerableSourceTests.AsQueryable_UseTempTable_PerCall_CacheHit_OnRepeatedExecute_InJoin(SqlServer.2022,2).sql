-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_c89ab0b6ad45]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c89ab0b6ad45](Id, Data)

-- SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_c89ab0b6ad45] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_c89ab0b6ad45]

