-- SqlServer.Contained SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT TOP (@take)
			[r].[Notes],
			[r].[Sku] || [r].[Sku] as [Twice],
			[r].[Sku]
		FROM
			[LongVarCharKeyRow] [r]
	) [t1]
WHERE
	([t1].[Notes] || [t1].[Twice]) = [t1].[Sku]

