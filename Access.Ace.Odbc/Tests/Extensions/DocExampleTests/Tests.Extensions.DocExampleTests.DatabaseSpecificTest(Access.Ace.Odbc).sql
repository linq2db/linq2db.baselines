-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[PersonID],
	[t].[Diagnosis]
FROM
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Parent] [t1],
			[Child] [c_1]
	) [cross_1]
		INNER JOIN [Patient] [t] ON ([cross_1].[ParentID] = [t].[PersonID])
WITH OWNERACCESS OPTION

