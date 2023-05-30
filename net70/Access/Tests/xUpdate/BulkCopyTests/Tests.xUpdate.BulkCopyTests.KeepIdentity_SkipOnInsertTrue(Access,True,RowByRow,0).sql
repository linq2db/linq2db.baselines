BeforeExecute
-- Access AccessOleDb

ALTER TABLE AllTypes ALTER COLUMN ID COUNTER(3, 1)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

