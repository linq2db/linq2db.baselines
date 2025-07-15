BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 200

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 300

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

