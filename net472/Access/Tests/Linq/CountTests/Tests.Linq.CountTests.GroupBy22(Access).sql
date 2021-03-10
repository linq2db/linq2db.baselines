BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1
DECLARE @n_1 Integer -- Int32
SET     @n_1 = 1

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [ch_1]
		LEFT JOIN (
			SELECT
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] < 2 AND [ch].[ParentID] + 2 > @n
			GROUP BY
				[ch].[ParentID]
		) [t1] ON ([ch_1].[ParentID] + 1 = [t1].[ParentID] + 1)
WHERE
	[ch_1].[ParentID] + 2 > @n_1
GROUP BY
	[ch_1].[ParentID] + 1

