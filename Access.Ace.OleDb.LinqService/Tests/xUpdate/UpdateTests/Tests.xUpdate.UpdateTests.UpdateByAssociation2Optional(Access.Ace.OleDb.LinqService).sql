﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	[MainTable] [a_MainOptional],
	[AssociatedTable] [p]
SET
	[a_MainOptional].[Field] = 'test'
WHERE
	[p].[Id] = @id AND [p].[Id] = [a_MainOptional].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

