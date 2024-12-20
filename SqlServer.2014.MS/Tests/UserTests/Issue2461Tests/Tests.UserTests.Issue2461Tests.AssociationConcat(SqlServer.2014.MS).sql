﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NOT NULL)
	DROP TABLE [MRECEIPT]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NULL)
	CREATE TABLE [MRECEIPT]
	(
		[RECEIPT_NO] NVarChar(4000)     NULL,
		[CUSTKEY]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[EXTERNAL_RECEIPTS]', N'U') IS NOT NULL)
	DROP TABLE [EXTERNAL_RECEIPTS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[EXTERNAL_RECEIPTS]', N'U') IS NULL)
	CREATE TABLE [EXTERNAL_RECEIPTS]
	(
		[RECEIPT_NO] NVarChar(4000)     NULL,
		[CUSTKEY]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NOT NULL)
	DROP TABLE [CUST_DTL]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NULL)
	CREATE TABLE [CUST_DTL]
	(
		[CUSTKEY]   NVarChar(4000)     NULL,
		[BILLGROUP] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NOT NULL)
	DROP TABLE [CUST_DTL]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[EXTERNAL_RECEIPTS]', N'U') IS NOT NULL)
	DROP TABLE [EXTERNAL_RECEIPTS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NOT NULL)
	DROP TABLE [MRECEIPT]

