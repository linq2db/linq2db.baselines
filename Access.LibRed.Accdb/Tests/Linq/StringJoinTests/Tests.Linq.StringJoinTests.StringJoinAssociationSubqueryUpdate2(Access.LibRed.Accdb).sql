-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[SampleClass] [t]
		OUTER APPLY (
			SELECT
				STRING_AGG(CASE
					WHEN [a_Children].[VarcharValue] IS NULL THEN ''
					ELSE [a_Children].[VarcharValue]
				END, ', ') as [Result_1]
			FROM
				[SampleClass] [a_Children]
			WHERE
				[t].[Id] = [a_Children].[Id]
		) [t1]
SET
	[t].[VarcharValue] = CASE
		WHEN [t1].[Result_1] IS NULL THEN ''
		ELSE [t1].[Result_1]
	END,
	[t].[NVarcharValue] = CASE
		WHEN [t1].[Result_1] IS NULL THEN ''
		ELSE [t1].[Result_1]
	END

