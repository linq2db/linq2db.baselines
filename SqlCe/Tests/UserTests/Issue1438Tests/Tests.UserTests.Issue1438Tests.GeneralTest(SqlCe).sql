BeforeExecute
-- SqlCe

DROP TABLE [Issue1438]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Has Bit -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlCe

DROP TABLE [Issue1438]

