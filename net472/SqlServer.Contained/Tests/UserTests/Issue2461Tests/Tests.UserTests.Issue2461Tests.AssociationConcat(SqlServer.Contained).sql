BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(4000)     NULL,
	[CUSTKEY]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(4000)     NULL,
	[BILLGROUP] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [MRECEIPT]

