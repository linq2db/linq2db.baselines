-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_067fb9bdaf69]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_067fb9bdaf69](Id, Data)

-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_067fb9bdaf69] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_067fb9bdaf69]

