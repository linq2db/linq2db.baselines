﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@One IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Zero IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @OneN Integer -- Int32
SET     @OneN = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@OneN IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@ZeroN IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Null Integer -- Int32
SET     @Null = NULL

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Null IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@One NOT IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Zero NOT IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @OneN Integer -- Int32
SET     @OneN = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@OneN NOT IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@ZeroN NOT IN (
		SELECT
			[s].[Value1]
		FROM
			[BooleanTable] [s]
		WHERE
			[s].[Id] > [r].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

