BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

