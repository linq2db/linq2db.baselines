BeforeExecute
-- SqlCe

DROP TABLE [FeatureTable]

BeforeExecute
-- SqlCe

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
-- SqlCe

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
SELECT 1,1,0,NULL,1,0,NULL

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[One] AND [r].[One] IS NOT NULL AND [r].[One] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[One] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Zero] = [r].[Zero] AND [r].[Zero] IS NOT NULL AND [r].[Zero] IS NOT NULL OR
					[r].[Zero] IS NULL AND [r].[Zero] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Null]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Null] = [r].[Null] AND [r].[Null] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[Null] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[Zero] AND [r].[One] IS NOT NULL AND [r].[Zero] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[Zero] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[Null] AND [r].[One] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Zero] = [r].[Null] AND [r].[Zero] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[Zero] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[One] AND [r].[One] IS NOT NULL AND [r].[One] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[One] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Zero] = [r].[Zero] AND [r].[Zero] IS NOT NULL AND [r].[Zero] IS NOT NULL OR
					[r].[Zero] IS NULL AND [r].[Zero] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Null]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Null] = [r].[Null] AND [r].[Null] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[Null] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[Zero] AND [r].[One] IS NOT NULL AND [r].[Zero] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[Zero] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[Null] AND [r].[One] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[One] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[FeatureTable] [r]
WHERE
	NOT EXISTS(
		SELECT DISTINCT
			[r].[Zero]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[Zero] = [r].[Null] AND [r].[Zero] IS NOT NULL AND [r].[Null] IS NOT NULL OR
					[r].[Zero] IS NULL AND [r].[Null] IS NULL
			)
	)

BeforeExecute
-- SqlCe

DROP TABLE [FeatureTable]

