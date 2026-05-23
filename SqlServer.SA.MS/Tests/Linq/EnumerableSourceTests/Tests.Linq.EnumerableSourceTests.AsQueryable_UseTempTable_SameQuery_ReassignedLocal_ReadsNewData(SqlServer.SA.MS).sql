-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f97db182cb71]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f97db182cb71](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f97db182cb71] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f97db182cb71]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f97db182cb71]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f97db182cb71](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f97db182cb71] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f97db182cb71]

