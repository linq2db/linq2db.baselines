BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF(EXISTS(
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
	), 1, 0)

