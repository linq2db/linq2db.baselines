BeforeExecute
-- SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	@value,
	IIF(1 = 1, @p, @p_1)

