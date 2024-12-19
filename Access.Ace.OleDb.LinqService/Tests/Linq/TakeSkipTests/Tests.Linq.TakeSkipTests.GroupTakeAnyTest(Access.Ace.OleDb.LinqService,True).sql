BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TakeSkipClass]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	IIF(COUNT(*) > 0, True, False)
FROM
	[TakeSkipClass] [item_1]
GROUP BY
	[item_1].[Value]
HAVING
	COUNT(*) > 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TakeSkipClass]

