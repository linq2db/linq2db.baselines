BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + ?
FROM
	[Person] [p]

