BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Iif(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), True, False),
	Iif([x].[ParentID] <> 0, True, False)
FROM
	[Parent] [x]
UNION ALL
SELECT
	Iif(EXISTS(
		SELECT
			*
		FROM
			[Child] [t2]
	), True, False),
	NULL
FROM
	[Parent] [x_1]

