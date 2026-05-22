-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_43ccdf51a002]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_43ccdf51a002](Id, Data)

-- SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_43ccdf51a002] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_43ccdf51a002]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_43ccdf51a002]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_43ccdf51a002](Id, Data)

-- SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_43ccdf51a002] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_43ccdf51a002]

