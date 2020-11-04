﻿BeforeExecute
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
	[x].[InId],
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMinQuantity]
		ELSE [j].[InMinQuantity]
	END,
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMaxQuantity]
		ELSE [j].[InMaxQuantity]
	END
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[InId],
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMinQuantity]
		ELSE [j].[InMinQuantity]
	END,
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMaxQuantity]
		ELSE [j].[InMaxQuantity]
	END
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'EdtLink') IS NOT NULL)
	DROP TABLE [EdtLink]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StLink') IS NOT NULL)
	DROP TABLE [StLink]

