﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] >= [i].[One] * 2 AND [i].[Two] <= [i].[One] + [i].[One]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Three] >= [i].[One] AND [i].[Three] <= [i].[Four]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] >= [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Two])

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[One]) AND
	[i].[Five] <= [i].[Two]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[One])

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] >= [i].[One] AND [i].[Nil] <= [i].[Three]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Five] >= [i].[Nil]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Five] <= [i].[Nil])

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[One] OR [i].[Two] = [i].[One] AND [i].[Nil] >= [i].[Nil]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Nil] <= [i].[Nil])

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	([i].[Two] > [i].[Nil] OR [i].[Two] = [i].[Nil] AND [i].[Two] >= [i].[One]) AND
	([i].[Two] < [i].[Three] OR [i].[Two] = [i].[Three] AND [i].[Two] <= [i].[Five])

