BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Time Time
SET     @Time = '1900-01-01'
DECLARE @TimeN Time
SET     @TimeN = '1900-01-01'
DECLARE @Time2 Time
SET     @Time2 = '1900-01-01'
DECLARE @Time2N Time
SET     @Time2N = '1900-01-01'
DECLARE @DateTime DateTime
SET     @DateTime = '1900-01-01'
DECLARE @DateTimeN DateTime
SET     @DateTimeN = '1900-01-01'

INSERT INTO [Issue1707]
(
	[Id],
	[Time],
	[TimeN],
	[Time2],
	[Time2N],
	[DateTime],
	[DateTimeN]
)
VALUES
(
	@Id,
	@Time,
	@TimeN,
	@Time2,
	@Time2N,
	@DateTime,
	@DateTimeN
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Time Time
SET     @Time = '1900-01-01 02:03:00'
DECLARE @TimeN Time
SET     @TimeN = '1900-01-01 02:03:00'
DECLARE @Time2 Time
SET     @Time2 = '1900-01-01 02:03:00'
DECLARE @Time2N Time
SET     @Time2N = '1900-01-01 02:03:00'
DECLARE @DateTime DateTime
SET     @DateTime = '1900-01-01 02:03:00'
DECLARE @DateTimeN DateTime
SET     @DateTimeN = '1900-01-01 02:03:00'

INSERT INTO [Issue1707]
(
	[Id],
	[Time],
	[TimeN],
	[Time2],
	[Time2N],
	[DateTime],
	[DateTimeN]
)
VALUES
(
	@Id,
	@Time,
	@TimeN,
	@Time2,
	@Time2N,
	@DateTime,
	@DateTimeN
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Time Time
SET     @Time = '1899-12-31 21:57:00'
DECLARE @TimeN Time
SET     @TimeN = '1899-12-31 21:57:00'
DECLARE @Time2 Time
SET     @Time2 = '1899-12-31 21:57:00'
DECLARE @Time2N Time
SET     @Time2N = '1899-12-31 21:57:00'
DECLARE @DateTime DateTime
SET     @DateTime = '1899-12-31 21:57:00'
DECLARE @DateTimeN DateTime
SET     @DateTimeN = '1899-12-31 21:57:00'

INSERT INTO [Issue1707]
(
	[Id],
	[Time],
	[TimeN],
	[Time2],
	[Time2N],
	[DateTime],
	[DateTimeN]
)
VALUES
(
	@Id,
	@Time,
	@TimeN,
	@Time2,
	@Time2N,
	@DateTime,
	@DateTimeN
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Time Time
SET     @Time = '1900-01-02 02:07:00'
DECLARE @TimeN Time
SET     @TimeN = '1900-01-02 02:07:00'
DECLARE @Time2 Time
SET     @Time2 = '1900-01-02 02:07:00'
DECLARE @Time2N Time
SET     @Time2N = '1900-01-02 02:07:00'
DECLARE @DateTime DateTime
SET     @DateTime = '1900-01-02 02:07:00'
DECLARE @DateTimeN DateTime
SET     @DateTimeN = '1900-01-02 02:07:00'

INSERT INTO [Issue1707]
(
	[Id],
	[Time],
	[TimeN],
	[Time2],
	[Time2N],
	[DateTime],
	[DateTimeN]
)
VALUES
(
	@Id,
	@Time,
	@TimeN,
	@Time2,
	@Time2N,
	@DateTime,
	@DateTimeN
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Time Time
SET     @Time = '1899-12-30 21:53:00'
DECLARE @TimeN Time
SET     @TimeN = '1899-12-30 21:53:00'
DECLARE @Time2 Time
SET     @Time2 = '1899-12-30 21:53:00'
DECLARE @Time2N Time
SET     @Time2N = '1899-12-30 21:53:00'
DECLARE @DateTime DateTime
SET     @DateTime = '1899-12-30 21:53:00'
DECLARE @DateTimeN DateTime
SET     @DateTimeN = '1899-12-30 21:53:00'

INSERT INTO [Issue1707]
(
	[Id],
	[Time],
	[TimeN],
	[Time2],
	[Time2N],
	[DateTime],
	[DateTimeN]
)
VALUES
(
	@Id,
	@Time,
	@TimeN,
	@Time2,
	@Time2N,
	@DateTime,
	@DateTimeN
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Time],
	[t1].[Time2],
	[t1].[DateTime],
	[t1].[TimeN],
	[t1].[Time2N],
	[t1].[DateTimeN]
FROM
	[Issue1707] [t1]
ORDER BY
	[t1].[Id]

