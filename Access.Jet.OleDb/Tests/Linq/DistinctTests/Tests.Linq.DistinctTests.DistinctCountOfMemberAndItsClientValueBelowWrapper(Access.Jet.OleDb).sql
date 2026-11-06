-- Access.Jet.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ChildID]
		FROM
			(
				SELECT TOP 100
					[c_1].[ChildID]
				FROM
					[Child] [c_1]
			) [t1]
	) [t2]

