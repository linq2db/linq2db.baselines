-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[x].[Id],
	[x].[Byte],
	[x].[SByte],
	[x].[Int16],
	[x].[UInt16],
	[x].[Int32],
	[x].[UInt32],
	[x].[Int64],
	[x].[UInt64],
	[x].[ByteN],
	[x].[SByteN],
	[x].[Int16N],
	[x].[UInt16N],
	[x].[Int32N],
	[x].[UInt32N],
	[x].[Int64N],
	[x].[UInt64N]
FROM
	[IntegerConverts] [x]
		INNER JOIN [IntegerConverts] [y] ON [x].[Int64N] = [y].[Int64N] OR [x].[Int64N] IS NULL AND [y].[Int64N] IS NULL

