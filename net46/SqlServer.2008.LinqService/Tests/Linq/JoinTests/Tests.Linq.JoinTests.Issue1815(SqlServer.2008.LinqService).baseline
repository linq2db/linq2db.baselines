BeforeExecute
-- SqlServer.2008

CREATE TABLE [StLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- SqlServer.2008
DECLARE @InId Int -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Float -- Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Float -- Double
SET     @InMinQuantity = 1

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SqlServer.2008
DECLARE @InId Int -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Float -- Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Float -- Double
SET     @InMinQuantity = NULL

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [EdtLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- SqlServer.2008
DECLARE @InId Int -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Float -- Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Float -- Double
SET     @InMinQuantity = 3

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[InId],
	[j].[InId],
	[j].[InMaxQuantity],
	[j].[InMinQuantity],
	[x].[InMinQuantity],
	[x].[InMaxQuantity]
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[InId],
	[j].[InId],
	[j].[InMaxQuantity],
	[j].[InMinQuantity],
	[x].[InMinQuantity],
	[x].[InMaxQuantity]
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 2

BeforeExecute
-- SqlServer.2008

DROP TABLE [EdtLink]

BeforeExecute
-- SqlServer.2008

DROP TABLE [StLink]

