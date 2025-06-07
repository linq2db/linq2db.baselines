BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Length Int -- Int32
SET     @Length = 2

SELECT
	([p5].[PersonID] * ?) / 2,
	[p5].[FirstName]
FROM
	[Person] [p5]

