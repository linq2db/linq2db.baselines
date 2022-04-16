BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:56:56.6014022 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 21:56:56.6014087 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

