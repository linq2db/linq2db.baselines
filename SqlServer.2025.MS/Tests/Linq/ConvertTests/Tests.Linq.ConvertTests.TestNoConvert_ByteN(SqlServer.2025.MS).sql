﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
		INNER JOIN [IntegerConverts] [y] ON [x].[ByteN] = [y].[ByteN] OR [x].[ByteN] IS NULL AND [y].[ByteN] IS NULL

