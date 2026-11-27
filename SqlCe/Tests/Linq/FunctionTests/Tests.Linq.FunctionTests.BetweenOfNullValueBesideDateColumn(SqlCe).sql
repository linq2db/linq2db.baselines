-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlCe
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @high DateTime
SET     @high = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- SqlCe
DECLARE @some DateTime
SET     @some = '2020-01-02 12:00:00.000'
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- SqlCe
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	CASE
		WHEN @none NOT BETWEEN [r].[Day] AND @later THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

