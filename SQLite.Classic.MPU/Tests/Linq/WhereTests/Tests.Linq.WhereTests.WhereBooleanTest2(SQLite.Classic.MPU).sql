-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND
	[t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[NullableBoolValue] = 0 AND
	[t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND
	[t].[Id] > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

