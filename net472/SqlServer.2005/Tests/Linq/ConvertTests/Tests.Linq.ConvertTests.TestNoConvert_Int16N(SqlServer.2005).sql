BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IntegerConverts]', N'U') IS NOT NULL)
	DROP TABLE [IntegerConverts]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

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
SELECT 1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[IntegerConverts]', N'U') IS NOT NULL)
	DROP TABLE [IntegerConverts]

