﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] > [i].[One] * 2 OR [i].[Two] = [i].[One] * 2 AND [i].[Three] >= [i].[Four] - 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] >= [i].[Three]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] > [i].[Five] OR [i].[Two] = [i].[Five] AND [i].[Four] >= [i].[Three]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] > [i].[Two] OR [i].[Nil] = [i].[Two] AND [i].[Four] >= [i].[Three]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	2 > [i].[One] OR 2 = [i].[One] AND NULL > [i].[Two]

