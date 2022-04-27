BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]   Int         NOT NULL,
		[Int]  Int             NULL,
		[Enum] NVarChar(5)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(5) -- String
SET     @Enum = N'TWO'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum]
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IS NOT NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Src]

