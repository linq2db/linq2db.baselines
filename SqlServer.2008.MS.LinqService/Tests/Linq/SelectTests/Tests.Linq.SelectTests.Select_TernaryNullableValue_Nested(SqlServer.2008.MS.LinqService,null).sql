BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Int -- Int32
SET     @value = NULL
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 2
	END

