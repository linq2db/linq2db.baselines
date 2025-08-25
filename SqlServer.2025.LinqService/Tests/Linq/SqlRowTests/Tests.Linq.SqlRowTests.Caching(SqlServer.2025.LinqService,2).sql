BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @r3 Int -- Int32
SET     @r3 = 2

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = @r3

