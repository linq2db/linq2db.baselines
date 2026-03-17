-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[BooleanTable] [r]
WHERE
	[r].[Value1] = 1

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN ([r].[Value1] = [r].[Value2]) THEN 1
		ELSE 0
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
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN ([r].[Value1] <> [r].[Value2]) THEN 1
		ELSE 0
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
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
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
		END IS NULL
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
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
		END IS NULL
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
			WHEN ([r].[Value1] = [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
			WHEN ([r].[Value1] <> [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN CASE
			WHEN ([r].[Value1] = [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 0
		ELSE 1
	END = 1

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN CASE
			WHEN ([r].[Value1] <> [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 0
		ELSE 1
	END = 1

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
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
		END IS NULL
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
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
		END IS NULL
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
			WHEN ([r].[Value1] = [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 0
		ELSE 1
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
			WHEN ([r].[Value1] <> [r].[Value2]) THEN 1
			ELSE 0
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
		END
			THEN 0
		ELSE 1
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value4] + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value4] + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value4] + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value4] + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value2] + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value2] + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value2] + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @cnt Integer -- Int32
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
		WHEN (1=1) THEN 1
		ELSE 0
	END = CASE
		WHEN ([r].[Value2] + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				[BooleanTable] [r_1]
			WHERE
				[r_1].[Value1] = 1
		) + [r].[Value5])
			THEN 1
		ELSE 0
	END

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

