-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[i].[RECEIPT_NO]
FROM
	[EnumStatusReceipt] [i]
		INNER JOIN [ReceiptProperty] [a_ReceiptProperty] ON [i].[PROPERTY_ID] = [a_ReceiptProperty].[Id]
WHERE
	[a_ReceiptProperty].[Id] = 100

