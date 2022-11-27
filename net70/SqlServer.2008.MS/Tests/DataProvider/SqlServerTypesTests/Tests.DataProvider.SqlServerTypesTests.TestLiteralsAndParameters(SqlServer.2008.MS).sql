BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(23) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(23) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(23) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(23) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(23) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(23) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS SMALLDATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 SmallDateTime -- DateTime
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55' AS DATETIME2(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55' AS DATETIME2(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1' AS DATETIME2(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1' AS DATETIME2(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12' AS DATETIME2(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1200000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12' AS DATETIME2(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1200000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME2(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME2(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231' AS DATETIME2(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231' AS DATETIME2(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12312' AS DATETIME2(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231200' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12312' AS DATETIME2(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231200' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123123' AS DATETIME2(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231230' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123123' AS DATETIME2(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231230' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(23) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(23) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(23) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(23) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(23) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(23) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS SMALLDATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 SmallDateTime -- DateTime
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55' AS DATETIME2(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1' AS DATETIME2(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12' AS DATETIME2(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1200000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123' AS DATETIME2(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1230' AS DATETIME2(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12300' AS DATETIME2(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123000' AS DATETIME2(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1230000' AS DATETIME2))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644950000000 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644950000000

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(8) -- AnsiString
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(8) -- String
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(8) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(8) -- StringFixedLength
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55' AS TIME(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.0000000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55' AS TIME(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.0000000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951000000 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951000000

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(10) -- AnsiString
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(10) -- String
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(10) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(10) -- StringFixedLength
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1000000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.1'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1' AS TIME(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1000000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1' AS TIME(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1000000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951200000 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951200000

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(11) -- AnsiString
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(11) -- String
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(11) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(11) -- StringFixedLength
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1200000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.12'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.12' AS TIME(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1200000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.12' AS TIME(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1200000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951230000 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951230000

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(12) -- AnsiString
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(12) -- String
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(12) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(12) -- StringFixedLength
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1230000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.123' AS TIME(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1230000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.123' AS TIME(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1230000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231000 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951231000

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(13) -- AnsiString
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(13) -- String
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(13) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(13) -- StringFixedLength
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231000')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.1231'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1231' AS TIME(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1231' AS TIME(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231000' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231200 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951231200

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(14) -- AnsiString
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(14) -- String
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(14) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(14) -- StringFixedLength
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231200')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.12312'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.12312' AS TIME(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231200' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.12312' AS TIME(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231200' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231230 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951231230

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(15) -- AnsiString
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(15) -- String
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(15) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(15) -- StringFixedLength
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231230')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.123123'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.123123' AS TIME(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231230' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.123123' AS TIME(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231230' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST(644951231234 AS BIGINT))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 644951231234

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(16) -- AnsiString
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(16) -- String
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(16) -- AnsiStringFixedLength
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(16) -- StringFixedLength
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'17:54:55.1231234')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'17:54:55.1231234'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1231234' AS TIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231234' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('17:54:55.1231234' AS TIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Time
SET     @value_1 = CAST('17:54:55.1231234' AS TIME)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.123' AS DATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime
SET     @value_1 = CAST('2020-02-29T17:14:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.123' AS SMALLDATETIME))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 SmallDateTime -- DateTime
SET     @value_1 = CAST('2020-02-29T17:14:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(25) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(25) -- String
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(25) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(25) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55' AS DATETIME2(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55+00:40' AS DATETIMEOFFSET(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.0000000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55+00:40' AS DATETIMEOFFSET(0)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.0000000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(27) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(27) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(27) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(27) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.1' AS DATETIME2(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1+00:40' AS DATETIMEOFFSET(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1000000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1+00:40' AS DATETIMEOFFSET(1)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1000000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(28) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(28) -- String
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(28) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(28) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.12+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.12' AS DATETIME2(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1200000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12+00:40' AS DATETIMEOFFSET(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1200000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12+00:40' AS DATETIMEOFFSET(2)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1200000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(29) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(29) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(29) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(29) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.123' AS DATETIME2(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1230000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123+00:40' AS DATETIMEOFFSET(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123+00:40' AS DATETIMEOFFSET(3)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1230000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(30) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(30) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(30) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(30) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1231+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.1231' AS DATETIME2(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1231000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231+00:40' AS DATETIMEOFFSET(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231+00:40' AS DATETIMEOFFSET(4)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231000+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(31) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(31) -- String
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(31) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(31) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.12312+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.12312+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.12312' AS DATETIME2(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1231200' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12312+00:40' AS DATETIMEOFFSET(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231200+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.12312+00:40' AS DATETIMEOFFSET(5)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231200+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(32) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(32) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(32) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(32) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.123123+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.123123+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.123123' AS DATETIME2(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1231230' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123123+00:40' AS DATETIMEOFFSET(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231230+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.123123+00:40' AS DATETIMEOFFSET(6)))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231230+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Text(33) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NText(33) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 Char(33) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NChar(33) -- StringFixedLength
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		('2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(N'2020-02-29T17:54:55.1231234+00:40')
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29T17:54:55.1231234+00:40'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:14:55.1231234' AS DATETIME2))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTime2
SET     @value_1 = CAST('2020-02-29T17:14:55.1231234' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Value]
FROM
	(VALUES
		(CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET))
	) [t1]([Value])

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value_1 DateTimeOffset
SET     @value_1 = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Text(10) -- AnsiString
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 NText(10) -- String
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Char(10) -- AnsiStringFixedLength
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 NChar(10) -- StringFixedLength
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 VarChar(8000) -- AnsiString
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 NVarChar(4000) -- String
SET     @value_1 = N'2020-02-29'

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
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
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Value]
FROM
	(
		select 1 as one
	) [x],
	(VALUES
		(@value_1)
	) [t1]([Value])

