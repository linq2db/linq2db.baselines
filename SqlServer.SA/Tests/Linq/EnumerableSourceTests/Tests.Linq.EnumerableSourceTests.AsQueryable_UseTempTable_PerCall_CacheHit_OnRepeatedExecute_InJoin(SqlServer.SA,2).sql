-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_77b1dc0134e9]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_77b1dc0134e9](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_77b1dc0134e9] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_77b1dc0134e9]

