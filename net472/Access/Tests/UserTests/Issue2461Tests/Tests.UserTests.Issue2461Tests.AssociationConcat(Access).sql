BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CUST_DTL]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MRECEIPT]

