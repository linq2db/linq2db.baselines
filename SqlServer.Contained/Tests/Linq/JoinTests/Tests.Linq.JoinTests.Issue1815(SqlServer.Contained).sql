﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [StLink]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[StLink]', N'U') IS NULL)
	CREATE TABLE [StLink]
	(
		[InId]          Int   NOT NULL,
		[InMaxQuantity] Float     NULL,
		[InMinQuantity] Float     NULL,

		CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[EdtLink]', N'U') IS NULL)
	CREATE TABLE [EdtLink]
	(
		[InId]          Int   NOT NULL,
		[InMaxQuantity] Float     NULL,
		[InMinQuantity] Float     NULL,

		CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(2,4,3)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [StLink]

