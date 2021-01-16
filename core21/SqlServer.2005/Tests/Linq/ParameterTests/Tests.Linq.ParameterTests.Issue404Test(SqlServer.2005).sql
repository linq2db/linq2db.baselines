BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
SELECT 1,0,1 UNION ALL
SELECT 2,0,1 UNION ALL
SELECT 3,1,1 UNION ALL
SELECT 4,0,2 UNION ALL
SELECT 5,1,2 UNION ALL
SELECT 6,1,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
SELECT 1,0,1 UNION ALL
SELECT 2,0,1 UNION ALL
SELECT 3,1,1 UNION ALL
SELECT 4,0,2 UNION ALL
SELECT 5,1,2 UNION ALL
SELECT 6,1,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

