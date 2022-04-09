BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [MRECEIPT]

