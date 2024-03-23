BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @value Int -- Int32
SET     @value = NULL
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	@value,
	IIF(1 = 1, @p, 4)

