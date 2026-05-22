-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_31ea86f7a4ab]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_31ea86f7a4ab](Id, Data)

-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_31ea86f7a4ab] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_31ea86f7a4ab]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_31ea86f7a4ab]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_31ea86f7a4ab](Id, Data)

-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_31ea86f7a4ab] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_31ea86f7a4ab]

