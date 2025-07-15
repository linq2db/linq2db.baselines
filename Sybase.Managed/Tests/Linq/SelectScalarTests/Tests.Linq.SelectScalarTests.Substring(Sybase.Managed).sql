BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Substring('123', 2, @p)

