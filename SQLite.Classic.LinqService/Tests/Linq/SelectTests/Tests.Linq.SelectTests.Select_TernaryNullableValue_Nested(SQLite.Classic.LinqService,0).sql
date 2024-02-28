BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 0
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	@value,
	CASE
		WHEN @p < 2 THEN @p
		ELSE 2 + @p
	END

