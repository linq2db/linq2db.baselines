BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = NULL
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 4
	END

