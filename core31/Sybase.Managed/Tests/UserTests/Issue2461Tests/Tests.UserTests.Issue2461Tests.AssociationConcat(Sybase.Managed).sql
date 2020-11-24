BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [CUST_DTL]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [MRECEIPT]

