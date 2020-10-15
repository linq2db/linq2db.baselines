BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue2547Item]
(
	[Id]       Int            NOT NULL,
	[Name]     NVarChar(4000) NOT NULL,
	[TestSpan] BigInt         NOT NULL,
	[TestEnum] VarChar(Max)   NOT NULL,

	CONSTRAINT [PK_Issue2547Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[Issue2547Item] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Item 1'
DECLARE @TestSpan BigInt -- Int64
SET     @TestSpan = 4500000000
DECLARE @TestEnum NVarChar(4000) -- String
SET     @TestEnum = N'A'

INSERT INTO [Issue2547Item]
(
	[Id],
	[Name],
	[TestSpan],
	[TestEnum]
)
VALUES
(
	@Id,
	@Name,
	@TestSpan,
	@TestEnum
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Issue2547Item]

