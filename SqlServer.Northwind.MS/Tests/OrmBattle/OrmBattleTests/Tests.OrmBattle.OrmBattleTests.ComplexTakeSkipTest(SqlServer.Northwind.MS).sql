-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 50
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 10

SELECT
	[t2].[RequiredDate]
FROM
	(
		SELECT DISTINCT
			[t1].[RequiredDate]
		FROM
			(
				SELECT
					[o].[RequiredDate],
					[o].[OrderDate]
				FROM
					[Orders] [o]
				ORDER BY
					[o].[OrderDate]
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) [t1]
		WHERE
			[t1].[OrderDate] IS NOT NULL
	) [t2]
ORDER BY
	[t2].[RequiredDate] DESC
OFFSET @skip_1 ROWS

