BeforeExecute
-- SqlServer.2005

CREATE TABLE [StLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 1,2,1 UNION ALL
SELECT 2,NULL,NULL

BeforeExecute
-- SqlServer.2005

CREATE TABLE [EdtLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
SELECT 2,4,3

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take) 
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
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take) 
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
-- SqlServer.2005

DROP TABLE [EdtLink]

BeforeExecute
-- SqlServer.2005

DROP TABLE [StLink]

