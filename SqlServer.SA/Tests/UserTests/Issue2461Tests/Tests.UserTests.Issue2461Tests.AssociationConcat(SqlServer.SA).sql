BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [MRECEIPT]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[MRECEIPT]', N'U') IS NULL)
	CREATE TABLE [MRECEIPT]
	(
		[RECEIPT_NO] NVarChar(4000)     NULL,
		[CUSTKEY]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [EXTERNAL_RECEIPTS]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[EXTERNAL_RECEIPTS]', N'U') IS NULL)
	CREATE TABLE [EXTERNAL_RECEIPTS]
	(
		[RECEIPT_NO] NVarChar(4000)     NULL,
		[CUSTKEY]    NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[CUST_DTL]', N'U') IS NULL)
	CREATE TABLE [CUST_DTL]
	(
		[CUSTKEY]   NVarChar(4000)     NULL,
		[BILLGROUP] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
		LEFT JOIN [CUST_DTL] [a_Customer] ON ([i_1].[Custkey] = [a_Customer].[CUSTKEY] OR [i_1].[Custkey] IS NULL AND [a_Customer].[CUSTKEY] IS NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CUST_DTL]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [EXTERNAL_RECEIPTS]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [MRECEIPT]

