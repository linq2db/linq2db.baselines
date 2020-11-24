BeforeExecute
-- SqlServer.2012

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(4000)     NULL,
	[CUSTKEY]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(4000)     NULL,
	[BILLGROUP] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

DROP TABLE [CUST_DTL]

BeforeExecute
-- SqlServer.2012

DROP TABLE [MRECEIPT]

