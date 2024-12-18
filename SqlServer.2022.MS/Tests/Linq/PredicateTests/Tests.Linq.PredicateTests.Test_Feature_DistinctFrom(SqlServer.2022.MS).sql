BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [FeatureTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[FeatureTable]', N'U') IS NULL)
	CREATE TABLE [FeatureTable]
	(
		[Id]       Int NOT NULL,
		[One]      Int     NULL,
		[Zero]     Int     NULL,
		[Null]     Int     NULL,
		[True]     Bit     NULL,
		[False]    Bit     NULL,
		[BoolNull] Bit     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [FeatureTable]
(
	[Id],
	[One],
	[Zero],
	[Null],
	[True],
	[False],
	[BoolNull]
)
VALUES
(1,1,0,NULL,1,0,NULL)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[One]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS DISTINCT FROM [r].[Zero]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Null] IS DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[Zero]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[One]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS NOT DISTINCT FROM [r].[Zero]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Null] IS NOT DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[Zero]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[One] IS NOT DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	[r].[Zero] IS NOT DISTINCT FROM [r].[Null]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [FeatureTable]

