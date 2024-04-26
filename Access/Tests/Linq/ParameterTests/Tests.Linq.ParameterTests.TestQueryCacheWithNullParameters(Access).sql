BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

