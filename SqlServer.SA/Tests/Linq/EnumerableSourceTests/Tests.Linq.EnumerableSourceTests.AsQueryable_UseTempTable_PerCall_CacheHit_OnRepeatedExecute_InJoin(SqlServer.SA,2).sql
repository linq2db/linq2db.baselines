-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_46a625f851ec]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_46a625f851ec](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#T_46a625f851ec] [r] ON [p].[PersonID] = [r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_46a625f851ec]

