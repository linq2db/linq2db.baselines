-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_56d0b67e76e4]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_56d0b67e76e4](Id, Data)

-- SqlServer.2025

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_56d0b67e76e4] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_56d0b67e76e4]

