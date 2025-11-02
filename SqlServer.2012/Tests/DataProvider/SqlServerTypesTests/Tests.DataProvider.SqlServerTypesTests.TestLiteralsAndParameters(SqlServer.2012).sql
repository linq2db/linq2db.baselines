-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(23) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(23) -- String
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(23) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(23) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(23) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(23) -- String
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS SMALLDATETIME))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value SmallDateTime -- DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATEFROMPARTS(2020, 2, 29))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Date
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEFROMPARTS(2020, 2, 29, 17, 54, 55, 123))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12312, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231200, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12312, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231200, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123123, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231230, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123123, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231230, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(23) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(23) -- String
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(23) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(23) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(23) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(23) -- String
SET     @value = N'2020-02-29T17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS SMALLDATETIME))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value SmallDateTime -- DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATEFROMPARTS(2020, 2, 29))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Date
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEFROMPARTS(2020, 2, 29, 17, 54, 55, 123))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEFROMPARTS(2020, 2, 29, 17, 54, 55, 123))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 12300, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 123000, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644950000000 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644950000000

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(8) -- AnsiString
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(8) -- String
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(8) -- AnsiStringFixedLength
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(8) -- StringFixedLength
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951000000 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951000000

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(10) -- AnsiString
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(10) -- String
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(10) -- AnsiStringFixedLength
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(10) -- StringFixedLength
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.1'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951200000 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951200000

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(11) -- AnsiString
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(11) -- String
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(11) -- AnsiStringFixedLength
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(11) -- StringFixedLength
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.12'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951230000 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951230000

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(12) -- AnsiString
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(12) -- String
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(12) -- AnsiStringFixedLength
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(12) -- StringFixedLength
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231000 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951231000

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(13) -- AnsiString
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(13) -- String
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(13) -- AnsiStringFixedLength
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(13) -- StringFixedLength
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.1231'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1231, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1231, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231200 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951231200

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(14) -- AnsiString
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(14) -- String
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(14) -- AnsiStringFixedLength
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(14) -- StringFixedLength
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.12312'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 12312, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231200, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 12312, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231200, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231230 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951231230

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(15) -- AnsiString
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(15) -- String
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(15) -- AnsiStringFixedLength
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(15) -- StringFixedLength
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.123123'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 123123, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231230, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 123123, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231230, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231234 AS BIGINT))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value BigInt -- Int64
SET     @value = 644951231234

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(16) -- AnsiString
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(16) -- String
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(16) -- AnsiStringFixedLength
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(16) -- StringFixedLength
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'17:54:55.1231234'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1231234, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(TIMEFROMPARTS(17, 54, 55, 1231234, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Time
SET     @value = TIMEFROMPARTS(17, 54, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATEFROMPARTS(2020, 2, 29))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Date
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEFROMPARTS(2020, 2, 29, 17, 14, 55, 123))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.123' AS SMALLDATETIME))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value SmallDateTime -- DateTime
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(25) -- AnsiString
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(25) -- String
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(25) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(25) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 0, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 0, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0, 40, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0, 40, 0))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 0, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(27) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(27) -- String
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(27) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(27) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1000000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1, 0, 40, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1000000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1, 0, 40, 1))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1000000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(28) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(28) -- String
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(28) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(28) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 12, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1200000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 12, 0, 40, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1200000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 12, 0, 40, 2))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1200000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(29) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(29) -- String
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(29) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(29) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 123, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1230000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 123, 0, 40, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 123, 0, 40, 3))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(30) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(30) -- String
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(30) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(30) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231000, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231, 0, 40, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231, 0, 40, 4))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(31) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(31) -- String
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(31) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(31) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 12312, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231200, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 12312, 0, 40, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231200, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 12312, 0, 40, 5))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231200, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(32) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(32) -- String
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(32) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(32) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 123123, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231230, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 123123, 0, 40, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231230, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 123123, 0, 40, 6))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231230, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(33) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(33) -- String
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(33) -- AnsiStringFixedLength
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(33) -- StringFixedLength
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231234, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 2, 29, 17, 14, 55, 1231234, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7))
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value DateTimeOffset
SET     @value = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (VALUES
			(@value)
		) [y]([Value])

