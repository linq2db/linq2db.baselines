-- SqlServer.2012

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Text(10) -- AnsiString
SET     @value = N'2020-02-29'

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
		(N'2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NText(10) -- String
SET     @value = N'2020-02-29'

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
		('2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value Char(10) -- AnsiStringFixedLength
SET     @value = N'2020-02-29'

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
		(N'2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NChar(10) -- StringFixedLength
SET     @value = N'2020-02-29'

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
		('2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29'

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
		(N'2020-02-29')
	) [t1]([Value])

-- SqlServer.2012
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29'

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

