BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [sample_table_temp]
(
	[id]    INTEGER NOT NULL,
	[value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	'[id]',
	'id'
FROM
	[sample_table_temp] [t]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [sample_table_temp]

