BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	(
		SELECT TOP (@take) 
			[keyParam].[Taxonomy]
		FROM
			[Doctor] [keyParam]
		WHERE
			[t1].[PersonID] = [keyParam].[PersonID]
	)
FROM
	[Doctor] [t1]
GROUP BY
	[t1].[PersonID]

