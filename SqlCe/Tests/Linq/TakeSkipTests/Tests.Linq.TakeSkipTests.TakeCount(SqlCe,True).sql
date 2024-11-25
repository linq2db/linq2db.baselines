BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT TOP (@take)
			1 as [c1]
		FROM
			[Child] [t1]
	) [t2]

