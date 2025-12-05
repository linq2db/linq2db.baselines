-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Byte],
	[t1].[SByte],
	[t1].[Int16],
	[t1].[UInt16],
	[t1].[Int32],
	[t1].[UInt32],
	[t1].[Int64],
	[t1].[UInt64],
	[t1].[ByteN],
	[t1].[SByteN],
	[t1].[Int16N],
	[t1].[UInt16N],
	[t1].[Int32N],
	[t1].[UInt32N],
	[t1].[Int64N],
	[t1].[UInt64N]
FROM
	[IntegerConverts] [t1]
		INNER JOIN [IntegerConverts] [y] ON [y].[Int64N] = [t1].[Int64N] OR [y].[Int64N] IS NULL AND [t1].[Int64N] IS NULL

