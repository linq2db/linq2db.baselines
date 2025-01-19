BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] < [i].[One] * 2 OR [i].[Two] = [i].[One] * 2 AND [i].[Three] <= [i].[Four] - 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] <= [i].[Three]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] < [i].[Five] OR [i].[Two] = [i].[Five] AND [i].[Four] <= [i].[Three]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] < [i].[Two] OR [i].[Nil] = [i].[Two] AND [i].[One] <= [i].[Three]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	0 < [i].[One] OR 0 = [i].[One] AND NULL < [i].[Two]

