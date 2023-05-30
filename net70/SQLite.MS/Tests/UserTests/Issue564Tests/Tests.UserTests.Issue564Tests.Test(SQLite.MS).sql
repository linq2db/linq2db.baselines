﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Parent564]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Parent564]
(
	[Id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Type]        NVarChar(255)      NULL,
	[StringValue] NVarChar(20)       NULL,
	[IntValue]    INTEGER            NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue NVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Type NVarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue  -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Parent564]

