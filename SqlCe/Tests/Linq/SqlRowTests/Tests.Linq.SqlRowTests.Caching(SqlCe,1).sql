BeforeExecute
-- SqlCe
DECLARE @r3 Int -- Int32
SET     @r3 = 1

SELECT
	COUNT(*) as [Count_1]
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = @r3

