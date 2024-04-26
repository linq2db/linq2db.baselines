﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Text(10) -- AnsiString
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value NText(10) -- String
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Char(10) -- AnsiStringFixedLength
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value NChar(10) -- StringFixedLength
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value VarChar(8000) -- AnsiString
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value NVarChar(4000) -- String
SET     @value = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29' AS DATE))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Date
SET     @value = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29' AS DATE))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Date
SET     @value = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value)
	) [t1]([Value])

