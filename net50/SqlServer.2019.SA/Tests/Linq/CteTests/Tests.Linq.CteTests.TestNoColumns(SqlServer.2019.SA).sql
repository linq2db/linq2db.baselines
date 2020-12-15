BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Count(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

WITH [CTE1_] ([ParentID], [ChildID])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[ChildID]
	FROM
		[Child] [t1]
)
SELECT
	Count(*)
FROM
	[CTE1_] [t2]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

WITH [CTE1_] ([ChildID])
AS
(
	SELECT
		[c_2].[ChildID]
	FROM
		[Child] [c_2]
)
SELECT
	Count(*)
FROM
	[CTE1_] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

WITH [CTE1_] ([ChildID])
AS
(
	SELECT
		[c_2].[ChildID]
	FROM
		[Child] [c_2]
)
SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[CTE1_] [t1]
	) THEN 1 ELSE 0 END

