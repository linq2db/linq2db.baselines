BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1279Table]
(
	[Id]      Int       NOT NULL IDENTITY,
	[CharFld] NChar(1)  NOT NULL,

	CONSTRAINT [PK_Issue1279Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = N'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1279Table]

