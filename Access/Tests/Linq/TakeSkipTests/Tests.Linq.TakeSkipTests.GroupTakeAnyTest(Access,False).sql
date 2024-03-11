﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [TakeSkipClass]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 1
	IIF(Count(*) > 0, True, False)
FROM
	[TakeSkipClass] [group_1]
GROUP BY
	[group_1].[Value]
HAVING
	Count(*) > 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TakeSkipClass]

