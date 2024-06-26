BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StLink') IS NOT NULL)
	DROP TABLE [StLink]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StLink') IS NULL)
	EXECUTE('
		CREATE TABLE [StLink]
		(
			[InId]          Int   NOT NULL,
			[InMaxQuantity] Float     NULL,
			[InMinQuantity] Float     NULL,

			CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 1,2,1 UNION ALL
SELECT 2,NULL,NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EdtLink') IS NOT NULL)
	DROP TABLE [EdtLink]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EdtLink') IS NULL)
	EXECUTE('
		CREATE TABLE [EdtLink]
		(
			[InId]          Int   NOT NULL,
			[InMaxQuantity] Float     NULL,
			[InMinQuantity] Float     NULL,

			CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 2,4,3

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[InId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END,
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[InId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END,
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EdtLink') IS NOT NULL)
	DROP TABLE [EdtLink]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StLink') IS NOT NULL)
	DROP TABLE [StLink]

