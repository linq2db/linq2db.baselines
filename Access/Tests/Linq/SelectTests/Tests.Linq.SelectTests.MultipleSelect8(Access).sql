BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * 2) / CVar(@ID),
	[p2].[FirstName]
FROM
	[Person] [p2]

