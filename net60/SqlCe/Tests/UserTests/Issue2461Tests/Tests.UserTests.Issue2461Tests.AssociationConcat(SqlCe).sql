BeforeExecute
-- SqlCe

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [CUST_DTL]

BeforeExecute
-- SqlCe

DROP TABLE [MRECEIPT]

