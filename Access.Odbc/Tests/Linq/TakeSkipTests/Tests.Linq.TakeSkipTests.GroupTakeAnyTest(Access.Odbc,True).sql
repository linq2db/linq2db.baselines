BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TakeSkipClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT TOP 1
	IIF(COUNT(*) > 0, True, False)
FROM
	[TakeSkipClass] [group_1]
GROUP BY
	[group_1].[Value]
HAVING
	COUNT(*) > 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TakeSkipClass]

