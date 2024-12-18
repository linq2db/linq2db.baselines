BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [BooleanTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NULL)
	CREATE TABLE [BooleanTable]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,
		[Value2] Int NOT NULL,
		[Value4] Int     NULL,
		[Value5] Int     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [BooleanTable]
(
	[Id],
	[Value1],
	[Value2],
	[Value4],
	[Value5]
)
VALUES
(1,0,0,NULL,NULL),
(2,0,0,NULL,0),
(3,0,0,NULL,1),
(4,0,0,0,NULL),
(5,0,0,0,0),
(6,0,0,0,1),
(7,0,0,1,NULL),
(8,0,0,1,0),
(9,0,0,1,1),
(10,0,1,NULL,NULL),
(11,0,1,NULL,0),
(12,0,1,NULL,1),
(13,0,1,0,NULL),
(14,0,1,0,0),
(15,0,1,0,1),
(16,0,1,1,NULL),
(17,0,1,1,0),
(18,0,1,1,1),
(19,1,0,NULL,NULL),
(20,1,0,NULL,0),
(21,1,0,NULL,1),
(22,1,0,0,NULL),
(23,1,0,0,0),
(24,1,0,0,1),
(25,1,0,1,NULL),
(26,1,0,1,0),
(27,1,0,1,1),
(28,1,1,NULL,NULL),
(29,1,1,NULL,0),
(30,1,1,NULL,1),
(31,1,1,0,NULL),
(32,1,1,0,0),
(33,1,1,0,1),
(34,1,1,1,NULL),
(35,1,1,1,0),
(36,1,1,1,1)

BeforeExecute
-- SqlServer.2016
DECLARE @True Bit -- Boolean
SET     @True = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) = @True

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [BooleanTable]

