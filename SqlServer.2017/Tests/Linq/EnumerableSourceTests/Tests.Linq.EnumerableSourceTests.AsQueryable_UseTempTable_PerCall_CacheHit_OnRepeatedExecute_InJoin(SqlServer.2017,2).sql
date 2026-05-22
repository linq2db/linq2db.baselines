-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_ec5667b95e04]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_ec5667b95e04](Id, Data)

-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_ec5667b95e04] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_ec5667b95e04]

