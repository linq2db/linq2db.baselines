BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [IntegerConverts]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[IntegerConverts]', N'U') IS NULL)
	CREATE TABLE [IntegerConverts]
	(
		[Id]      Int      NOT NULL,
		[Byte]    TinyInt  NOT NULL,
		[SByte]   TinyInt  NOT NULL,
		[Int16]   SmallInt NOT NULL,
		[UInt16]  Int      NOT NULL,
		[Int32]   Int      NOT NULL,
		[UInt32]  BigInt   NOT NULL,
		[Int64]   BigInt   NOT NULL,
		[UInt64]  Decimal  NOT NULL,
		[ByteN]   TinyInt      NULL,
		[SByteN]  TinyInt      NULL,
		[Int16N]  SmallInt     NULL,
		[UInt16N] Int          NULL,
		[Int32N]  Int          NULL,
		[UInt32N] BigInt       NULL,
		[Int64N]  BigInt       NULL,
		[UInt64N] Decimal      NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [IntegerConverts]
(
	[Id],
	[Byte],
	[SByte],
	[Int16],
	[UInt16],
	[Int32],
	[UInt32],
	[Int64],
	[UInt64],
	[ByteN],
	[SByteN],
	[Int16N],
	[UInt16N],
	[Int32N],
	[UInt32N],
	[Int64N],
	[UInt64N]
)
VALUES
(1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
		INNER JOIN [IntegerConverts] [y] ON [y].[SByteN] = [t1].[SByteN] AND [y].[SByteN] IS NOT NULL AND [t1].[SByteN] IS NOT NULL OR [y].[SByteN] IS NULL AND [t1].[SByteN] IS NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [IntegerConverts]

