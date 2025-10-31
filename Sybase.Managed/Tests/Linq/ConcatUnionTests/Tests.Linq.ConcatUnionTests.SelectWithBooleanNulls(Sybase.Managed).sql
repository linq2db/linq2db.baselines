-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [t1]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [x].[ParentID] <> 0 THEN 1
		ELSE 0
	END
FROM
	[Parent] [x]
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [t2]
		)
			THEN 1
		ELSE 0
	END,
	NULL
FROM
	[Parent] [x_1]

