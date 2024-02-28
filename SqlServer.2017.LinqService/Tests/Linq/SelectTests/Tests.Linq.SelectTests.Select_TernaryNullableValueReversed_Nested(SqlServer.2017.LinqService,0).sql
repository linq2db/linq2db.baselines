BeforeExecute
-- SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 0
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	@value,
	IIF(@p < 2, @p, @p + 4)

