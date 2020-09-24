﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1960Table]
(
	[Decimal1] Text   NOT NULL,
	[Decimal2] Text   NOT NULL,
	[Decimal3] Text   NOT NULL,
	[DateTime] BigInt NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @decValue NVarChar -- String
SET     @decValue = 12345.6789
DECLARE @dtValue  -- Int64
SET     @dtValue = 123456789

INSERT INTO [Issue1960Table]
(
	[Decimal1],
	[Decimal2],
	[Decimal3],
	[DateTime]
)
VALUES
(
	@decValue,
	@decValue,
	@decValue,
	@dtValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Decimal1],
	[t1].[Decimal2],
	[t1].[Decimal3],
	[t1].[DateTime]
FROM
	[Issue1960Table] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1960Table]

