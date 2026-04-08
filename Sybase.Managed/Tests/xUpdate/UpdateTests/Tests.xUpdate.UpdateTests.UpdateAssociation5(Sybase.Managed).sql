-- Sybase.Managed Sybase

UPDATE
	[LinqDataTypes]
SET
	[BoolValue] = CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Parent] [x_1]
			WHERE
				(
					SELECT
						[t1].[ID]
					FROM
						(
							SELECT DISTINCT
								[a_Table1_1].[ID],
								[a_Table1_1].[BoolValue]
							FROM
								[Parent] [x_2]
									INNER JOIN [LinqDataTypes] [a_Table1_1] ON [x_2].[ParentID] = [a_Table1_1].[ID]
							WHERE
								[x_2].[ParentID] IN (10000, 20000)
						) [t1]
					WHERE
						[LinqDataTypes].[ID] = [t1].[ID] AND [LinqDataTypes].[BoolValue] = [t1].[BoolValue]
				) = [x_1].[ParentID] AND
				([x_1].[Value1] <> 1 OR [x_1].[Value1] IS NULL)
		)
			THEN 1
		ELSE 0
	END
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [x]
				INNER JOIN [LinqDataTypes] [a_Table1] ON [x].[ParentID] = [a_Table1].[ID]
		WHERE
			[x].[ParentID] IN (10000, 20000) AND [LinqDataTypes].[ID] = [a_Table1].[ID] AND
			[LinqDataTypes].[BoolValue] = [a_Table1].[BoolValue]
	)

