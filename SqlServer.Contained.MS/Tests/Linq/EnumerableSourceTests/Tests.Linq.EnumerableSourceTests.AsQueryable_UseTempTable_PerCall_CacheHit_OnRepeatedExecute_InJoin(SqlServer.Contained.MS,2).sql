-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_5d816e7ee0bf]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_5d816e7ee0bf](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_5d816e7ee0bf] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_5d816e7ee0bf]

