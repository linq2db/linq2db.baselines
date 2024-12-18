BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [ConversionsTestTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[ConversionsTestTable]', N'U') IS NULL)
	CREATE TABLE [ConversionsTestTable]
	(
		[SByte]   TinyInt  NOT NULL,
		[Byte]    TinyInt  NOT NULL,
		[Int16]   SmallInt NOT NULL,
		[UInt16]  Int      NOT NULL,
		[Int32]   Int      NOT NULL,
		[UInt32]  BigInt   NOT NULL,
		[Int64]   BigInt   NOT NULL,
		[UInt64]  Decimal  NOT NULL,
		[SByteN]  TinyInt      NULL,
		[ByteN]   TinyInt      NULL,
		[Int16N]  SmallInt     NULL,
		[UInt16N] Int          NULL,
		[Int32N]  Int          NULL,
		[UInt32N] BigInt       NULL,
		[Int64N]  BigInt       NULL,
		[UInt64N] Decimal      NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
	[x].[ByteN] = 4 AND [x].[ByteN] IS NOT NULL OR
	[x].[SByteN] = 4 AND [x].[SByteN] IS NOT NULL OR
	[x].[Int16N] = 4 AND [x].[Int16N] IS NOT NULL OR
	[x].[UInt16N] = 4 AND [x].[UInt16N] IS NOT NULL OR
	[x].[Int32N] = 4 AND [x].[Int32N] IS NOT NULL OR
	[x].[UInt32N] = 4 AND [x].[UInt32N] IS NOT NULL OR
	[x].[Int64N] = 4 AND [x].[Int64N] IS NOT NULL OR
	[x].[UInt64N] = 4 AND [x].[UInt64N] IS NOT NULL OR
	4 = [x].[Byte] OR
	4 = [x].[SByte] OR
	4 = [x].[Int16] OR
	4 = [x].[UInt16] OR
	4 = [x].[Int32] OR
	4 = [x].[UInt32] OR
	4 = [x].[Int64] OR
	4 = [x].[UInt64] OR
	4 = [x].[ByteN] AND [x].[ByteN] IS NOT NULL OR
	4 = [x].[SByteN] AND [x].[SByteN] IS NOT NULL OR
	4 = [x].[Int16N] AND [x].[Int16N] IS NOT NULL OR
	4 = [x].[UInt16N] AND [x].[UInt16N] IS NOT NULL OR
	4 = [x].[Int32N] AND [x].[Int32N] IS NOT NULL OR
	4 = [x].[UInt32N] AND [x].[UInt32N] IS NOT NULL OR
	4 = [x].[Int64N] AND [x].[Int64N] IS NOT NULL OR
	4 = [x].[UInt64N] AND [x].[UInt64N] IS NOT NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [ConversionsTestTable]

