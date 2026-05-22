-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_684fd50552f0]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_684fd50552f0](Id, Data)

-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_684fd50552f0] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_684fd50552f0]

