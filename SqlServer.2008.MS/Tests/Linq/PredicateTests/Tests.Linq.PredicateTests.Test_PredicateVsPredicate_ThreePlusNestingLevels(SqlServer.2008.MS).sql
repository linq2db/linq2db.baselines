-- SqlServer.2008.MS SqlServer.2008

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
			WHEN [r].[Value1] <> [r].[Value2] THEN 1
			ELSE 0
		END = CASE
			WHEN [r].[Value1] = [r].[Value4] THEN 1
			ELSE 0
		END
			THEN 1
		ELSE 0
	END = CASE
		WHEN CASE
			WHEN [r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
				THEN 1
			ELSE 0
		END = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			ELSE 0
		END
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] = [r].[Value1] THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] = [r].[Value1] THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END <> CASE
		WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
			WHEN [r].[Value1] = [r].[Value2] THEN 1
			ELSE 0
		END = CASE
			WHEN [r].[Value2] <> [r].[Value4] OR [r].[Value4] IS NULL
				THEN 1
			ELSE 0
		END
			THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value1] = [r].[Value4] THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- SqlServer.2008.MS SqlServer.2008

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
			WHEN [r].[Value1] <> [r].[Value2] THEN 1
			ELSE 0
		END <> CASE
			WHEN [r].[Value2] = [r].[Value5] THEN 1
			ELSE 0
		END
			THEN 1
		ELSE 0
	END <> CASE
		WHEN CASE
			WHEN [r].[Value4] <> [r].[Value1] OR [r].[Value4] IS NULL
				THEN 1
			ELSE 0
		END = CASE
			WHEN [r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
				THEN 1
			ELSE 0
		END
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

