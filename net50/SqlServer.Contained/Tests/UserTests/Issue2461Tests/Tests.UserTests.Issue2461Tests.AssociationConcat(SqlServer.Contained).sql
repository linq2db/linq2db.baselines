BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(4000)     NULL,
	[CUSTKEY]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(4000)     NULL,
	[BILLGROUP] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MRECEIPT]

