BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [IntegerConverts]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

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
		INNER JOIN [IntegerConverts] [y] ON [x].[Int16N] = [y].[Int16N] OR [x].[Int16N] IS NULL AND [y].[Int16N] IS NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [IntegerConverts]

