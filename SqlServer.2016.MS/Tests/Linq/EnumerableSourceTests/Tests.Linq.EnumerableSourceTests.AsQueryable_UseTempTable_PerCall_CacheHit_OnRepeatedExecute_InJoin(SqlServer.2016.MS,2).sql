-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_e3d5564593f2]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_e3d5564593f2](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_e3d5564593f2] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_e3d5564593f2]

