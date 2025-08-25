BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[BooleanTable] [r]
WHERE
	[r].[Value1] = 1

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] = [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(([r].[Value1] <> [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(IIF(([r].[Value1] = [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(IIF(([r].[Value1] <> [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(IIF(([r].[Value1] = [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 0, 1) = 1

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF(IIF(([r].[Value1] <> [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 0, 1) = 1

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NOT NULL OR CASE
		WHEN ([r].[Value1] = [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] = [r].[Value4]) THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END OR CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NOT NULL OR CASE
		WHEN ([r].[Value1] <> [r].[Value4]) THEN 1
		WHEN NOT ([r].[Value1] <> [r].[Value4]) THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END IS NULL, 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(IIF(([r].[Value1] = [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 0, 1)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(IIF(([r].[Value1] <> [r].[Value2]), 1, 0) = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 1
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) = ([r].[Value5] + @cnt))
			THEN 0
		ELSE NULL
	END, 0, 1)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value4] + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value4] + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value4] + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value4] + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value2] + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value2] + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value2] + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value2] + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5])

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value4] + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value4] + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value4] + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value4] + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value2] + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value2] + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value2] + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @cnt Int -- Int32
SET     @cnt = 18

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	IIF((1=1), 1, 0) = IIF(([r].[Value2] + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			[BooleanTable] [r_1]
		WHERE
			[r_1].[Value1] = 1
	) + [r].[Value5]), 1, 0)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

