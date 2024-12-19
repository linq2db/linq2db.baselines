BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	([p5].[PersonID] * CVar(@Length)) / 2,
	[p5].[FirstName]
FROM
	[Person] [p5]

