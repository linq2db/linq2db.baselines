BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = ?
WHERE
	[t].[Data] = '***XXX***'

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = ?
WHERE
	[t].[Data] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

