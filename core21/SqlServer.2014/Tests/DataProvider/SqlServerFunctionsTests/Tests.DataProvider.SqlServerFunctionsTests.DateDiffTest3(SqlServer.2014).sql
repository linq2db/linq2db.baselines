BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:01:52.9269438 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-30 01:01:52.9269505 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

