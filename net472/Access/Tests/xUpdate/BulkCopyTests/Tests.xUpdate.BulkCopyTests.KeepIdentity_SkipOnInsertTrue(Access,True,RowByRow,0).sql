BeforeExecute
-- Access AccessOleDb
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 195

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

