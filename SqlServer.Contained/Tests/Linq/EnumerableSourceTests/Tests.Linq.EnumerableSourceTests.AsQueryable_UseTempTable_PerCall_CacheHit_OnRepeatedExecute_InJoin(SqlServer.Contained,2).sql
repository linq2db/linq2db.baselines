-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_cfe241292f63]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_cfe241292f63](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_cfe241292f63] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cfe241292f63]

