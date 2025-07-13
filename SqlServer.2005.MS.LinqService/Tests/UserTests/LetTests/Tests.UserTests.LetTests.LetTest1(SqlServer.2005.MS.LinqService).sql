BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Field6]
FROM
	[Table2] [t1]
		LEFT JOIN [Table3] [a_Ref3] ON [t1].[Field6] = [a_Ref3].[Field6] OR [t1].[Field6] IS NULL AND [a_Ref3].[Field6] IS NULL
		LEFT JOIN [Table1] [a_Ref4] ON [a_Ref3].[Field3] = [a_Ref4].[Field3]
		LEFT JOIN [Table1] [a_Ref1] ON [a_Ref4].[Field5] = [a_Ref1].[Field3]
		LEFT JOIN [Table7] [a_Ref5] ON [a_Ref3].[Field4] = [a_Ref5].[Field4]
		INNER JOIN [Table3] [t2]
			LEFT JOIN [Table7] [a_Ref5_1] ON [t2].[Field4] = [a_Ref5_1].[Field4]
			INNER JOIN [Table2] [t4] ON [t2].[Field6] = [t4].[Field6] OR [t2].[Field6] IS NULL AND [t4].[Field6] IS NULL
		ON [a_Ref1].[Field3] = [t2].[Field3] AND ([a_Ref5].[Field8] = [a_Ref5_1].[Field8] OR [a_Ref5].[Field8] IS NULL AND [a_Ref5_1].[Field8] IS NULL)

