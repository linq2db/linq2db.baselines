BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[InId],
	IIF([e].[InId] IS NULL, [t1].[InMinQuantity], [e].[InMinQuantity]),
	IIF([e].[InId] IS NULL, [t1].[InMaxQuantity], [e].[InMaxQuantity])
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON ([t1].[InId] = [e].[InId])
WHERE
	[t1].[InId] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[InId],
	IIF([e].[InId] IS NULL, [t1].[InMinQuantity], [e].[InMinQuantity]),
	IIF([e].[InId] IS NULL, [t1].[InMaxQuantity], [e].[InMaxQuantity])
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON ([t1].[InId] = [e].[InId])
WHERE
	[t1].[InId] = 2

