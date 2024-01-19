BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MRECEIPT]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [MRECEIPT]

