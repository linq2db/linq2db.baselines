-- Access.Jet.Odbc AccessODBC
DECLARE @token NVarChar(2) -- String
SET     @token = 'Bx'

SELECT
	CVar(?)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

