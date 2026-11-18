-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t1].[Sum_1] IS NULL THEN 0
		ELSE [t1].[Sum_1]
	END
FROM
	[ParentRow] [parent]
		OUTER APPLY (
			SELECT
				SUM(CASE
					WHEN 0 >= [row_1].[Value] THEN 0
					ELSE [row_1].[Value]
				END + 1) as [Sum_1]
			FROM
				[Row] [row_1]
			WHERE
				[row_1].[ParentId] = [parent].[Id]
		) [t1]
ORDER BY
	[parent].[Id]

