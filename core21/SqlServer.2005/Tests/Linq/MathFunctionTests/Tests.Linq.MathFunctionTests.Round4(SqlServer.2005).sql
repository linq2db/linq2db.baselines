﻿BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1) AND (Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1) OR Convert(Float, [p].[MoneyValue]) IS NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NOT NULL OR Convert(Float, [p].[MoneyValue]) IS NOT NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NULL)
			THEN Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2
		ELSE Round(Convert(Float, [p].[MoneyValue]), 1)
	END
FROM
	[LinqDataTypes] [p]
WHERE
	CASE
		WHEN Convert(Float, [p].[MoneyValue]) * 2 = Round(Convert(Float, [p].[MoneyValue]) * 2, 1) AND (Convert(Float, [p].[MoneyValue]) <> Round(Convert(Float, [p].[MoneyValue]), 1) OR Convert(Float, [p].[MoneyValue]) IS NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NOT NULL OR Convert(Float, [p].[MoneyValue]) IS NOT NULL AND Round(Convert(Float, [p].[MoneyValue]), 1) IS NULL)
			THEN Round(Convert(Float, [p].[MoneyValue]) / 2, 1) * 2
		ELSE Round(Convert(Float, [p].[MoneyValue]), 1)
	END <> 0

