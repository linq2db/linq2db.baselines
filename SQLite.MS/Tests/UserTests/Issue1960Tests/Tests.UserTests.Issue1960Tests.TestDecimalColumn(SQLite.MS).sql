﻿BeforeExecute
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

SELECT
	[t1].[Decimal1],
	[t1].[Decimal2],
	[t1].[Decimal3],
	[t1].[DateTime]
FROM
	[Issue1960Table] [t1]
LIMIT 2

