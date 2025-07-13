BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring('123', 2, @p) as [c1]

