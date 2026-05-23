-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_fcfc8cc09710]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_fcfc8cc09710](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_fcfc8cc09710] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_fcfc8cc09710]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_fcfc8cc09710]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_fcfc8cc09710](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_fcfc8cc09710] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_fcfc8cc09710]

