-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[SByte],
	[x].[Byte],
	[x].[Int16],
	[x].[UInt16],
	[x].[Int32],
	[x].[UInt32],
	[x].[Int64],
	[x].[UInt64],
	[x].[SByteN],
	[x].[ByteN],
	[x].[Int16N],
	[x].[UInt16N],
	[x].[Int32N],
	[x].[UInt32N],
	[x].[Int64N],
	[x].[UInt64N]
FROM
	[ConversionsTestTable] [x]
WHERE
	[x].[Byte] = 4 OR
	[x].[SByte] = 4 OR
	[x].[Int16] = 4 OR
	[x].[UInt16] = 4 OR
	[x].[Int32] = 4 OR
	[x].[UInt32] = 4 OR
	[x].[Int64] = 4 OR
	[x].[UInt64] = 4 OR
	[x].[ByteN] = 4 OR
	[x].[SByteN] = 4 OR
	[x].[Int16N] = 4 OR
	[x].[UInt16N] = 4 OR
	[x].[Int32N] = 4 OR
	[x].[UInt32N] = 4 OR
	[x].[Int64N] = 4 OR
	[x].[UInt64N] = 4

