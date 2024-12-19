BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockItem') IS NOT NULL)
	DROP TABLE [Issue4674StockItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockItem') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4674StockItem]
		(
			[TenantId]    NVarChar(255)     NULL,
			[Code]        NVarChar(255)     NULL,
			[Description] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockRoomItem') IS NOT NULL)
	DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockRoomItem') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4674StockRoomItem]
		(
			[TenantId]      NVarChar(255)     NULL,
			[StockroomCode] NVarChar(255)     NULL,
			[ItemCode]      NVarChar(255)     NULL,
			[Quantity]      DECIMAL       NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockRoomItem') IS NOT NULL)
	DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4674StockItem') IS NOT NULL)
	DROP TABLE [Issue4674StockItem]

