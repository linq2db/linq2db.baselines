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
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 200

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
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 300

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
DECLARE @lastId Integer -- Int32
SET     @lastId = 181

SELECT
	[_].[ID],
	[_].[intDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- Access AccessOleDb
DECLARE @lastId Integer -- Int32
SET     @lastId = 181

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @lastId

