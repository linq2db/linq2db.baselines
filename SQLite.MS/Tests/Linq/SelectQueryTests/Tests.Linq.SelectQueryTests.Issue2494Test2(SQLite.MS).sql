-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Issue2494Table] [t1]
	)

-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [Issue2494Table]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Issue2494Table] [t1]
	)

