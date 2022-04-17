BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.5146113 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 00:22:18.5146168 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

