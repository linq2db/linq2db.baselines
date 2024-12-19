BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TakeSkipClass]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT TOP 3
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TakeSkipClass]

