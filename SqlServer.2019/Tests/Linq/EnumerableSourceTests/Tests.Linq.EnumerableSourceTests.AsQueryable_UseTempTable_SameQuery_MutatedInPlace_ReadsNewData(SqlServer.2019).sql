-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_d7a45cab8b8c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d7a45cab8b8c](Id, Data)

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d7a45cab8b8c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d7a45cab8b8c]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_d7a45cab8b8c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d7a45cab8b8c](Id, Data)

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d7a45cab8b8c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d7a45cab8b8c]

