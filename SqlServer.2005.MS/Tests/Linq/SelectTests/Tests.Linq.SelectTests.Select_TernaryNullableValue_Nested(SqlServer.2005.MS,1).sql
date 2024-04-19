BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 3
	END

