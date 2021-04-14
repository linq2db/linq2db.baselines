﻿BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1707]
(
	[Id]        Int      NOT NULL,
	[Time]      Time     NOT NULL,
	[Time2]     Time     NOT NULL,
	[DateTime]  DateTime NOT NULL,
	[TimeN]     Time         NULL,
	[Time2N]    Time         NULL,
	[DateTimeN] DateTime     NULL
)

BeforeExecute
-- Sybase.Managed Sybase

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
	1,
	'00:00:00.000',
	'00:00:00.000',
	'1900-01-01',
	'1900-01-01',
	'1900-01-01',
	'1900-01-01'
)

BeforeExecute
-- Sybase.Managed Sybase

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
	2,
	'02:03:00.000',
	'02:03:00.000',
	'1900-01-01 02:03:00',
	'1900-01-01 02:03:00',
	'1900-01-01 02:03:00',
	'1900-01-01 02:03:00'
)

BeforeExecute
-- Sybase.Managed Sybase

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
	3,
	'21:57:00.000',
	'21:57:00.000',
	'1899-12-31 21:57:00',
	'1899-12-31 21:57:00',
	'1899-12-31 21:57:00',
	'1899-12-31 21:57:00'
)

BeforeExecute
-- Sybase.Managed Sybase

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
	4,
	'02:07:00.000',
	'02:07:00.000',
	'1900-01-02 02:07:00',
	'1900-01-02 02:07:00',
	'1900-01-02 02:07:00',
	'1900-01-02 02:07:00'
)

BeforeExecute
-- Sybase.Managed Sybase

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
	5,
	'21:53:00.000',
	'21:53:00.000',
	'1899-12-30 21:53:00',
	'1899-12-30 21:53:00',
	'1899-12-30 21:53:00',
	'1899-12-30 21:53:00'
)

BeforeExecute
-- Sybase.Managed Sybase

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

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1707') IS NOT NULL)
	DROP TABLE [Issue1707]

