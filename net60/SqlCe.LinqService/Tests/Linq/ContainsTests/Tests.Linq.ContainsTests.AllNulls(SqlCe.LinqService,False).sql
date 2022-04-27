BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]   Int         NOT NULL,
	[Int]  Int             NULL,
	[Enum] NVarChar(5)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'

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
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] IN (NULL, NULL)

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	[s].[Int] NOT IN (NULL, NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

