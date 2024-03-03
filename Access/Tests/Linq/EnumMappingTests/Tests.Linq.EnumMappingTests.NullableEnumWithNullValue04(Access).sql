﻿BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value WChar(2) -- StringFixedLength
SET     @Value = '11'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value WChar(2) -- StringFixedLength
SET     @Value = '22'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value WChar -- StringFixedLength
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 104
DECLARE @Value WChar -- StringFixedLength
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ID],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	([r].[ID] >= 101) AND ([r].[ID] <= 104)
ORDER BY
	[r].[ID]

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ID],
	[r].[IntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

