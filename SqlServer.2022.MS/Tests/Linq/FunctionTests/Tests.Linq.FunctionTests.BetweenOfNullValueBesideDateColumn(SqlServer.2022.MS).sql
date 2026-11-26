-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2022.MS SqlServer.2022
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @none DateTime2
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @high DateTime2
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- SqlServer.2022.MS SqlServer.2022
DECLARE @some DateTime2
SET     @some = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @none DateTime2
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2022.MS SqlServer.2022
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	IIF(@none NOT BETWEEN [r].[Day] AND @later, N'a', N'b')
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

