-- SQLite.Classic SQLite
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[ConditionalInsertTable] [t1]
	)

-- SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [ConditionalInsertTable]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.Classic SQLite
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[ConditionalInsertTable] [t1]
	)

