-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_61203b5c01e0]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_61203b5c01e0](Id, Data)

-- SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_61203b5c01e0] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_61203b5c01e0]

