BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Issue2494Table] [t1]
	)

BeforeExecute
-- SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Issue2494Table] [t1]
	)

