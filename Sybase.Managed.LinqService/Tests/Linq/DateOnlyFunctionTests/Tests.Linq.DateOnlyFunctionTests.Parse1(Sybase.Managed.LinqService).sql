﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)) > 0

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

