BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @personId Integer -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 1
DECLARE @personId_2 Integer -- Int32
SET     @personId_2 = 1

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId_1 AND
	[p].[PersonID] = @personId_2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @personId Integer -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 1
DECLARE @personId_2 Integer -- Int32
SET     @personId_2 = 2

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId_1 AND
	[p].[PersonID] = @personId_2

