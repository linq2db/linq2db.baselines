BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = NULL
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	@value,
	CASE
		WHEN @p < 2 THEN @p
		ELSE @p + 4
	END

