BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TakeSkipClass]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TakeSkipClass]

