BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PIPPO'

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
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'BOLTO'

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

SELECT 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TakeSkipClass]

