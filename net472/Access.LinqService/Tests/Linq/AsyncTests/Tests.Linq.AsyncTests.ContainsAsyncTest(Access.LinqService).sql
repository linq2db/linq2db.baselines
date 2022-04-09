BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	Count(*) > 0
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

