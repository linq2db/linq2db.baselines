BeforeExecute
-- SqlCe

DROP TABLE [Issue1279Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1279Table]
(
	[Id]      Int       NOT NULL IDENTITY,
	[CharFld] NChar(1)  NOT NULL,

	CONSTRAINT [PK_Issue1279Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @CharFld NVarChar -- String
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1279Table]

