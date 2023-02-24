BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DataClass]', N'U') IS NOT NULL)
	DROP TABLE [DataClass]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DataClass]', N'U') IS NULL)
	CREATE TABLE [DataClass]
	(
		[Id]    Int      NOT NULL,
		[Value] DateTime NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime
SET     @Value_1 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DataClass]', N'U') IS NOT NULL)
	DROP TABLE [DataClass]

