﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value_1 NChar(2) -- StringFixedLength
SET     @Value_1 = '11'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @Value_1 NChar(2) -- StringFixedLength
SET     @Value_1 = '22'

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 103
DECLARE @Value_1 NChar -- StringFixedLength
SET     @Value_1 = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 104
DECLARE @Value_1 NChar -- StringFixedLength
SET     @Value_1 = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[StringValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 104
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 105

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

