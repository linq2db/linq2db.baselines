﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]
LIMIT 1

