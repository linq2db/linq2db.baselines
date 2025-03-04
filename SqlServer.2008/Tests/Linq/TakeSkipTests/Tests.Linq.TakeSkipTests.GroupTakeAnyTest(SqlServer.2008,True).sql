BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT TOP (@take)
				*
			FROM
				(
					SELECT
						[group_1].[Value] as [Key_1]
					FROM
						[TakeSkipClass] [group_1]
					GROUP BY
						[group_1].[Value]
					HAVING
						COUNT(*) > 1
				) [item_1]
		)
			THEN 1
		ELSE 0
	END

