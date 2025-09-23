BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

