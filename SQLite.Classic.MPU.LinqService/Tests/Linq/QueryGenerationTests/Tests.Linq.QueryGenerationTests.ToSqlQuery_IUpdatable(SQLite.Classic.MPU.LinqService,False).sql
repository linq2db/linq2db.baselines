﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @newValue  -- Int32
SET     @newValue = 123

UPDATE
	[TableWithIdentity]
SET
	[Value] = @newValue

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

