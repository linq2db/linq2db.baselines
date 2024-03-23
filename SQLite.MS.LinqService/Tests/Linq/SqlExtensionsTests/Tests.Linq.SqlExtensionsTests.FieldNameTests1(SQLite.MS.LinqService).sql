BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [sample_table_temp]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [sample_table_temp]
(
	[id]    INTEGER NOT NULL,
	[value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [sample_table_temp]
(
	[id],
	[value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	'[id]',
	'[id]',
	'id'
FROM
	[sample_table_temp] [t]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [sample_table_temp]

