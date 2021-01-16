﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StLink]', N'U') IS NOT NULL)
	DROP TABLE [StLink]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StLink]', N'U') IS NULL)
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

IF (OBJECT_ID(N'[EdtLink]', N'U') IS NOT NULL)
	DROP TABLE [EdtLink]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EdtLink]', N'U') IS NULL)
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

IF (OBJECT_ID(N'[EdtLink]', N'U') IS NOT NULL)
	DROP TABLE [EdtLink]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[StLink]', N'U') IS NOT NULL)
	DROP TABLE [StLink]

