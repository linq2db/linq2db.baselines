BeforeExecute
-- SqlCe

DROP TABLE [StLink]

BeforeExecute
-- SqlCe

CREATE TABLE [StLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SqlCe

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 1,2,1 UNION ALL
SELECT 2,NULL,NULL

BeforeExecute
-- SqlCe

DROP TABLE [EdtLink]

BeforeExecute
-- SqlCe

CREATE TABLE [EdtLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SqlCe

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 2,4,3

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[InId] as [LinkId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END as [MinQuantity],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END as [MaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 1

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[InId] as [LinkId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END as [MinQuantity],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END as [MaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 2

BeforeExecute
-- SqlCe

DROP TABLE [EdtLink]

BeforeExecute
-- SqlCe

DROP TABLE [StLink]

