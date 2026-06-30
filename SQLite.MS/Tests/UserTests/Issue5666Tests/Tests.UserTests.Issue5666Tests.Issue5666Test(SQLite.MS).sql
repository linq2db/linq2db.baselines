-- SQLite.MS SQLite

SELECT
	[i].[RECEIPT_NO]
FROM
	[ReceiptBaseTest] [i]
		INNER JOIN [EnumTest] [a_EnumTest] ON [i].[PROPERTY_ID] = [a_EnumTest].[Id]
WHERE
	[a_EnumTest].[Id] = 100

