BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NOT NULL)
	DROP TABLE [WhereCases]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NULL)
	CREATE TABLE [WhereCases]
	(
		[Id]                Int NOT NULL,
		[BoolValue]         Bit NOT NULL,
		[NullableBoolValue] Bit     NULL,

		CONSTRAINT [PK_WhereCases] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,1,1 UNION ALL
SELECT 3,1,NULL UNION ALL
SELECT 4,1,1 UNION ALL
SELECT 5,1,1 UNION ALL
SELECT 11,0,NULL UNION ALL
SELECT 12,0,0 UNION ALL
SELECT 13,0,NULL UNION ALL
SELECT 14,0,0 UNION ALL
SELECT 15,0,0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NOT NULL)
	DROP TABLE [WhereCases]

