﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockItem]', N'U') IS NOT NULL)
	DROP TABLE [Issue4674StockItem]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockItem]', N'U') IS NULL)
	CREATE TABLE [Issue4674StockItem]
	(
		[TenantId]    NVarChar(4000)     NULL,
		[Code]        NVarChar(4000)     NULL,
		[Description] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockRoomItem]', N'U') IS NOT NULL)
	DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockRoomItem]', N'U') IS NULL)
	CREATE TABLE [Issue4674StockRoomItem]
	(
		[TenantId]      NVarChar(4000)     NULL,
		[StockroomCode] NVarChar(4000)     NULL,
		[ItemCode]      NVarChar(4000)     NULL,
		[Quantity]      Decimal        NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockRoomItem]', N'U') IS NOT NULL)
	DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4674StockItem]', N'U') IS NOT NULL)
	DROP TABLE [Issue4674StockItem]

