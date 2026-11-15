-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t].[Nullable1] IS NULL THEN CASE
			WHEN [t].[Nullable2] IS NULL THEN CASE
				WHEN [t].[Nullable3] IS NULL THEN [t].[Id]
				ELSE [t].[Nullable3]
			END
			ELSE [t].[Nullable2]
		END
		ELSE [t].[Nullable1]
	END,
	CASE
		WHEN [t].[Nullable2] IS NULL THEN CASE
			WHEN [t].[Nullable1] IS NULL THEN CASE
				WHEN [t].[Nullable3] IS NULL THEN [t].[Id]
				ELSE [t].[Nullable3]
			END
			ELSE [t].[Nullable1]
		END
		ELSE [t].[Nullable2]
	END,
	CASE
		WHEN [t].[Nullable2] IS NULL THEN CASE
			WHEN [t].[Nullable3] IS NULL THEN CASE
				WHEN [t].[Nullable1] IS NULL THEN [t].[Id]
				ELSE [t].[Nullable1]
			END
			ELSE [t].[Nullable3]
		END
		ELSE [t].[Nullable2]
	END,
	CASE
		WHEN [t].[Nullable3] IS NULL THEN CASE
			WHEN [t].[Nullable1] IS NULL THEN CASE
				WHEN [t].[Nullable2] IS NULL THEN [t].[Id]
				ELSE [t].[Nullable2]
			END
			ELSE [t].[Nullable1]
		END
		ELSE [t].[Nullable3]
	END,
	CASE
		WHEN [t].[Nullable3] IS NULL THEN CASE
			WHEN [t].[Nullable2] IS NULL THEN CASE
				WHEN [t].[Nullable1] IS NULL THEN [t].[Id]
				ELSE [t].[Nullable1]
			END
			ELSE [t].[Nullable2]
		END
		ELSE [t].[Nullable3]
	END,
	[t].[Id],
	CASE
		WHEN [t].[Nullable1] IS NULL THEN [t].[Id]
		ELSE [t].[Nullable1]
	END,
	CASE
		WHEN [t].[Nullable1] IS NULL THEN CASE
			WHEN [t].[Nullable2] IS NULL THEN [t].[Id]
			ELSE [t].[Nullable2]
		END
		ELSE [t].[Nullable1]
	END
FROM
	[CoalesceNullableFields] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

