-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_03afa7e1d830]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_03afa7e1d830](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_03afa7e1d830] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_03afa7e1d830]

