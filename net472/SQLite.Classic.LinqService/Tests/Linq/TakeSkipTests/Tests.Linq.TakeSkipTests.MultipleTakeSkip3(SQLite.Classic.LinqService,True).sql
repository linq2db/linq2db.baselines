﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value9'

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
DECLARE @skip_2  -- Int32
SET     @skip_2 = 1
DECLARE @skip_3  -- Int32
SET     @skip_3 = 3

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT @skip_2 OFFSET @skip_3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

