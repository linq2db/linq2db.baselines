BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = @Data
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = '***XXX***'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarWChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = @p

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

