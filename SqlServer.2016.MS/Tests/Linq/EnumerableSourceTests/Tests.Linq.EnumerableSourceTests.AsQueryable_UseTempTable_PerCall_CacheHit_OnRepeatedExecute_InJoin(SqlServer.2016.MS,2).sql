-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_add34f3498c0]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_add34f3498c0](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_add34f3498c0] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_add34f3498c0]

