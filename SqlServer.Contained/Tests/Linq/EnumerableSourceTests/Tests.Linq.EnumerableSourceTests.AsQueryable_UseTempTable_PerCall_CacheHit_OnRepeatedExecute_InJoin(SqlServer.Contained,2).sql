-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_48b2d7441cb6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_48b2d7441cb6](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_48b2d7441cb6] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_48b2d7441cb6]

