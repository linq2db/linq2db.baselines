BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [FeatureTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[One]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Zero]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Null]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Zero]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[One]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Zero]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Null]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Zero]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[One]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT
			[r].[Zero]
		INTERSECT
		SELECT
			[r].[Null]
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [FeatureTable]

