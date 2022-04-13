BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:07:12.5193035 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 15:07:12.5193109 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

