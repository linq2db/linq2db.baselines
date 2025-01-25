BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [WhereCases]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NULL)
	CREATE TABLE [WhereCases]
	(
		[Id]                Int NOT NULL,
		[BoolValue]         Bit NOT NULL,
		[NullableBoolValue] Bit     NULL,

		CONSTRAINT [PK_WhereCases] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(1,1,NULL),
(2,1,1),
(3,1,NULL),
(4,1,1),
(5,1,1),
(11,0,NULL),
(12,0,0),
(13,0,NULL),
(14,0,0),
(15,0,0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [WhereCases]

