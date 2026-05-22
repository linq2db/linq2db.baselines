-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_7b432e9d5f5b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_7b432e9d5f5b](Id, Data)

-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_7b432e9d5f5b] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_7b432e9d5f5b]

