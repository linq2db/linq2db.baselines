BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1960Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1960Table]
(
	[Decimal1] Text   NOT NULL,
	[Decimal2] Text   NOT NULL,
	[Decimal3] Text   NOT NULL,
	[DateTime] BigInt NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @decValue Decimal(9, 4)
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
-- SQLite.Classic SQLite

SELECT
	[t1].[Decimal1],
	[t1].[Decimal2],
	[t1].[Decimal3],
	[t1].[DateTime]
FROM
	[Issue1960Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1960Table]

