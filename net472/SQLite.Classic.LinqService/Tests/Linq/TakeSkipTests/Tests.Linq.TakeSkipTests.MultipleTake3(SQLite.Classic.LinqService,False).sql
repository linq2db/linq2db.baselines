﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value1'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value2'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value3'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value4'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value5'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value6'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value7'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value8'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TakeSkipClass]

