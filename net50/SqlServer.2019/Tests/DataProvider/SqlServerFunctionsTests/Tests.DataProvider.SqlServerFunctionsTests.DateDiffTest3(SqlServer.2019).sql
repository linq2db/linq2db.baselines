BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 09:08:06.7031998 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 09:08:06.7032121 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

