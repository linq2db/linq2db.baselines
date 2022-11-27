BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [MRECEIPT]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NULL)
	CREATE TABLE [MRECEIPT]
	(
		[RECEIPT_NO] NVarChar(4000)     NULL,
		[CUSTKEY]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NULL)
	CREATE TABLE [CUST_DTL]
	(
		[CUSTKEY]   NVarChar(4000)     NULL,
		[BILLGROUP] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [MRECEIPT]

