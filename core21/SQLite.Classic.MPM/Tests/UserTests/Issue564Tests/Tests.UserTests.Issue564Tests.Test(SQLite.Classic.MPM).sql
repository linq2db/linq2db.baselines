BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Parent564]
(
	[Id]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Type]        NVarChar(255)      NULL,
	[StringValue] NVarChar(20)       NULL,
	[IntValue]    INTEGER            NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Type_1 NVarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue NVarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Type_1 NVarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue  -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [Parent564]

