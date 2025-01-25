BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue1279Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue1279Table]', N'U') IS NULL)
	CREATE TABLE [Issue1279Table]
	(
		[Id]      Int       NOT NULL IDENTITY,
		[CharFld] NChar(1)  NOT NULL,

		CONSTRAINT [PK_Issue1279Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue1279Table]

