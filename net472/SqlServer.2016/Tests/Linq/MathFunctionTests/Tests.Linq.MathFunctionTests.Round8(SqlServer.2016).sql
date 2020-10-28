BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	IIF(Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0, Floor(Convert(Float, [p].[MoneyValue])), Round(Convert(Float, [p].[MoneyValue]), 0))
FROM
	[LinqDataTypes] [p]
WHERE
	(IIF(Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0, Floor(Convert(Float, [p].[MoneyValue])), Round(Convert(Float, [p].[MoneyValue]), 0)) <> 0 OR IIF(Convert(Float, [p].[MoneyValue]) - Floor(Convert(Float, [p].[MoneyValue])) = 0.5 AND (Convert(Int, Floor(Convert(Float, [p].[MoneyValue]))) % 2) = 0, Floor(Convert(Float, [p].[MoneyValue])), Round(Convert(Float, [p].[MoneyValue]), 0)) IS NULL)

