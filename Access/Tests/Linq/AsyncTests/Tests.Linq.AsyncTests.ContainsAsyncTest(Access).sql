BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

