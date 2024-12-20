﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MRECEIPT]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MRECEIPT]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EXTERNAL_RECEIPTS]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EXTERNAL_RECEIPTS]
(
	[RECEIPT_NO] NVarChar(255)     NULL,
	[CUSTKEY]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CUST_DTL]
(
	[CUSTKEY]   NVarChar(255)     NULL,
	[BILLGROUP] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[i_1].[ReceiptNo],
	[a_Customer].[BILLGROUP]
FROM
	(
		SELECT
			[i].[RECEIPT_NO] as [ReceiptNo],
			[i].[CUSTKEY] as [Custkey]
		FROM
			[MRECEIPT] [i]
		UNION ALL
		SELECT
			[t1].[RECEIPT_NO] as [ReceiptNo],
			[t1].[CUSTKEY] as [Custkey]
		FROM
			[EXTERNAL_RECEIPTS] [t1]
	) [i_1]
		LEFT JOIN [CUST_DTL] [a_Customer] ON [i_1].[Custkey] = [a_Customer].[CUSTKEY] OR [i_1].[Custkey] IS NULL AND [a_Customer].[CUSTKEY] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EXTERNAL_RECEIPTS]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MRECEIPT]

