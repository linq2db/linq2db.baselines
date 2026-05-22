-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_524145a7f4f3]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_524145a7f4f3](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_524145a7f4f3] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_524145a7f4f3]

