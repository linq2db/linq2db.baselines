BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Child] [t1]
	) [t2]

