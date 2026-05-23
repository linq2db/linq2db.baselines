-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_bd2fc1d33cb1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_bd2fc1d33cb1](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_bd2fc1d33cb1] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_bd2fc1d33cb1]

