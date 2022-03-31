BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:35:52.1165843 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 08:35:52.1165912 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

