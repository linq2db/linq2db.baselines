BeforeExecute
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = NULL
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	@value,
	IIF(@p < 2, @p, 2 + @p)

