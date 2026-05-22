-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_48ea7f52e651]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_48ea7f52e651](Id, Data)

-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_48ea7f52e651] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_48ea7f52e651]

