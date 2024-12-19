BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Order') IS NOT NULL)
	DROP TABLE [Order]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Order') IS NULL)
	EXECUTE('
		CREATE TABLE [Order]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrder') IS NOT NULL)
	DROP TABLE [SubOrder]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrder') IS NULL)
	EXECUTE('
		CREATE TABLE [SubOrder]
		(
			[Id]      Int NOT NULL,
			[OrderId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrderDetail') IS NOT NULL)
	DROP TABLE [SubOrderDetail]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrderDetail') IS NULL)
	EXECUTE('
		CREATE TABLE [SubOrderDetail]
		(
			[Id]         Int           NOT NULL,
			[SubOrderId] Int           NOT NULL,
			[Code]       NVarChar(255)     NULL,
			[Date]       DateTime      NOT NULL,
			[IsActive]   Bit           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrderDetail') IS NOT NULL)
	DROP TABLE [SubOrderDetail]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubOrder') IS NOT NULL)
	DROP TABLE [SubOrder]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Order') IS NOT NULL)
	DROP TABLE [Order]

