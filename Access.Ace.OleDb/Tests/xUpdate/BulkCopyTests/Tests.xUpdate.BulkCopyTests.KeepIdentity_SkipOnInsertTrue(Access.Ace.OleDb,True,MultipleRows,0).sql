-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

-- Access.Ace.OleDb AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

