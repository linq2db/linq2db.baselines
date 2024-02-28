﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1189Customer]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1189Customer]
(
	[ID]   INTEGER       NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'
DECLARE @DateTime_1  -- DateTime
SET     @DateTime_1 = '2020-02-29 17:54:55.123'
DECLARE @DateTime_2  -- DateTime
SET     @DateTime_2 = '2020-02-29 17:54:55.123'

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@DateTime
FROM
	[Issue1189Customer] [k_1]
WHERE
	DateTime(@DateTime_1) <= DateTime(@DateTime_2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1189Customer]

