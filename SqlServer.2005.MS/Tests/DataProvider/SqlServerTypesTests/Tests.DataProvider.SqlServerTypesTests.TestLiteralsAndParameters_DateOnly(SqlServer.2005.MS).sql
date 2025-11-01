-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT '2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value Text(10) -- AnsiString
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT N'2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value NText(10) -- String
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT '2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value Char(10) -- AnsiStringFixedLength
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT N'2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value NChar(10) -- StringFixedLength
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT '2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT N'2020-02-29' AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29'

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT CAST('2020-02-29' AS DATETIME) AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-02-29T00:00:00.000' AS DATETIME)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Value]
FROM
	(
		SELECT CAST('2020-02-29' AS DATETIME) AS [Value]) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-02-29T00:00:00.000' AS DATETIME)

SELECT
	[y].[Value]
FROM
	(
		select 1 as one
	) [x]([value])
		CROSS JOIN (
			SELECT @value AS [Value]) [y]

