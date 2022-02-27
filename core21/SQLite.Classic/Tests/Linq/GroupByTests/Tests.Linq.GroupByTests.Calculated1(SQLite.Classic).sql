BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[ParentID] > 2
					THEN CASE
					WHEN [selectParam].[ParentID] > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as [c1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1 NVarChar(1) -- String
SET     @p1 = '1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	CASE
		WHEN [selectParam].[ParentID] > 2
			THEN CASE
			WHEN [selectParam].[ParentID] > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END = @p1

