BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MRECEIPT') IS NOT NULL)
	DROP TABLE [MRECEIPT]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MRECEIPT') IS NULL)
	EXECUTE('
		CREATE TABLE [MRECEIPT]
		(
			[RECEIPT_NO] NVarChar(255)     NULL,
			[CUSTKEY]    NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CUST_DTL') IS NOT NULL)
	DROP TABLE [CUST_DTL]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CUST_DTL') IS NULL)
	EXECUTE('
		CREATE TABLE [CUST_DTL]
		(
			[CUSTKEY]   NVarChar(255)     NULL,
			[BILLGROUP] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CUST_DTL') IS NOT NULL)
	DROP TABLE [CUST_DTL]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MRECEIPT') IS NOT NULL)
	DROP TABLE [MRECEIPT]

