-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p NVarChar(1) -- String
SET     @p = 'X'

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE (PersonID = ? OR PersonID = ?) AND LastName <> ?
	) [p]

