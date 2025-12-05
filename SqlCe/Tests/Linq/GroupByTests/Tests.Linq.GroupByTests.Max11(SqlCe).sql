-- SqlCe

SELECT
	MAX(CASE
		WHEN [t1].[ChildID] > 20 THEN 1
		ELSE 0
	END) as [Max_1]
FROM
	[Child] [t1]

