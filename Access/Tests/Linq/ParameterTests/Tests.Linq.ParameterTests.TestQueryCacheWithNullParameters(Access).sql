BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

