﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[MoneyValue] >= 0
			THEN Floor([p].[MoneyValue])
		ELSE Ceiling([p].[MoneyValue])
	END
FROM
	[LinqDataTypes] [p]
WHERE
	CASE
		WHEN [p].[MoneyValue] >= 0
			THEN Floor([p].[MoneyValue])
		ELSE Ceiling([p].[MoneyValue])
	END <> 0.1

