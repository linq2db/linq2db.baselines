BeforeExecute
-- SqlCe

DROP TABLE [Table404One]

BeforeExecute
-- SqlCe

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlCe

DROP TABLE [Table404Two]

BeforeExecute
-- SqlCe

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [Table404Two]

BeforeExecute
-- SqlCe

DROP TABLE [Table404One]

BeforeExecute
-- SqlCe

DROP TABLE [Table404One]

BeforeExecute
-- SqlCe

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlCe

DROP TABLE [Table404Two]

BeforeExecute
-- SqlCe

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [Table404Two]

BeforeExecute
-- SqlCe

DROP TABLE [Table404One]

