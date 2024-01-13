BeforeExecute
-- SQLite.MS SQLite
DECLARE @value  -- Int32
SET     @value = 1
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 3
	END

