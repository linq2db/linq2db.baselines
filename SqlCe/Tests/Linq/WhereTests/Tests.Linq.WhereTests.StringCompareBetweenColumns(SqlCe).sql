-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] >= [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] <= [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] > [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] < [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] = [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] <> [right_1].[StrValue]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] >= [right_1].[StrValueNullable] OR [right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] <= [right_1].[StrValueNullable]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] > [right_1].[StrValueNullable] OR [right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] < [right_1].[StrValueNullable]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] = [right_1].[StrValueNullable]

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValue] <> [right_1].[StrValueNullable] OR [right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] >= [right_1].[StrValueNullable] OR
	[right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] <= [right_1].[StrValueNullable] OR
	[i].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] > [right_1].[StrValueNullable] OR
	[i].[StrValueNullable] IS NOT NULL AND [right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] < [right_1].[StrValueNullable] OR
	[i].[StrValueNullable] IS NULL AND [right_1].[StrValueNullable] IS NOT NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] = [right_1].[StrValueNullable] OR
	[i].[StrValueNullable] IS NULL AND [right_1].[StrValueNullable] IS NULL

-- SqlCe
SELECT
	[i].[Id],
	[i].[StrValue],
	[i].[StrValueNullable],
	[right_1].[Id] as [Id_1],
	[right_1].[StrValue] as [StrValue_1],
	[right_1].[StrValueNullable] as [StrValueNullable_1]
FROM
	[StringCompareTable] [i],
	[StringCompareTable] [right_1]
WHERE
	[i].[StrValueNullable] <> [right_1].[StrValueNullable] OR
	[i].[StrValueNullable] IS NULL AND [right_1].[StrValueNullable] IS NOT NULL OR
	[i].[StrValueNullable] IS NOT NULL AND [right_1].[StrValueNullable] IS NULL

