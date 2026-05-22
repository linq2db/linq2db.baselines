-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_3a9c75f1f686]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_3a9c75f1f686](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_3a9c75f1f686] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_3a9c75f1f686]

