BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:46:58.3733272 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 16:46:58.3733345 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

