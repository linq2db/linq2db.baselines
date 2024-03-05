BeforeExecute
-- SqlServer.2008
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE @p_1
	END

