BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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

