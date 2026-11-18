-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			[t1].[Notes],
			[t1].[Twice],
			[t1].[Sku]
		FROM
			(
				SELECT DISTINCT
					[r].[Notes],
					[r].[Sku] + [r].[Sku] as [Twice],
					[r].[Sku]
				FROM
					[LongVarCharKeyRow] [r]
			) [t1]
	) [t2]
WHERE
	([t2].[Notes] + [t2].[Twice]) = [t2].[Sku]

