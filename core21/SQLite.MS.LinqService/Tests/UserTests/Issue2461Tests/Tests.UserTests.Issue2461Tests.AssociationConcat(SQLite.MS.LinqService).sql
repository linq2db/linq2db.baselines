BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CUST_DTL]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [MRECEIPT]

