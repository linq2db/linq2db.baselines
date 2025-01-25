BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [StLink]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[StLink]', N'U') IS NULL)
	CREATE TABLE [StLink]
	(
		[InId]          Int   NOT NULL,
		[InMaxQuantity] Float     NULL,
		[InMinQuantity] Float     NULL,

		CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[EdtLink]', N'U') IS NULL)
	CREATE TABLE [EdtLink]
	(
		[InId]          Int   NOT NULL,
		[InMaxQuantity] Float     NULL,
		[InMinQuantity] Float     NULL,

		CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(2,4,3)

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[t1].[InId],
	[e].[InId],
	[t1].[InMinQuantity],
	[e].[InMinQuantity],
	[t1].[InMaxQuantity],
	[e].[InMaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 1

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[t1].[InId],
	[e].[InId],
	[t1].[InMinQuantity],
	[e].[InMinQuantity],
	[t1].[InMaxQuantity],
	[e].[InMaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 2

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [StLink]

