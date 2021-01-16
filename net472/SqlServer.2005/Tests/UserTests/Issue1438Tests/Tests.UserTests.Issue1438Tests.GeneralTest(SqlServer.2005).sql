BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1438]

