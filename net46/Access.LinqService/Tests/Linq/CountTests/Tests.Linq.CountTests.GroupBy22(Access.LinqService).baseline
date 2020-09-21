BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
	) [ch_3]
		LEFT JOIN (
			SELECT
				[ch_2].[ParentID]
			FROM
				(
					SELECT
						[ch_1].[ParentID] + 1 as [ParentID]
					FROM
						[Child] [ch_1]
				) [ch_2]
			WHERE
				[ch_2].[ParentID] < 3 AND [ch_2].[ParentID] + 1 > @n
			GROUP BY
				[ch_2].[ParentID]
		) [t1] ON ([ch_3].[ParentID] = [t1].[ParentID])
WHERE
	[ch_3].[ParentID] + 1 > @n
GROUP BY
	[ch_3].[ParentID]

