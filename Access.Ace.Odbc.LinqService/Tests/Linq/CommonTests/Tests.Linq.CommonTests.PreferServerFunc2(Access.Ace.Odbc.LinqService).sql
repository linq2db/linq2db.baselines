BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + ?
FROM
	[Person] [p]

