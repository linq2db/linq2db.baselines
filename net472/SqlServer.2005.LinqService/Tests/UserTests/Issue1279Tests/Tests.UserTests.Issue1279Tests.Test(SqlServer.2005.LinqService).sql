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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[Id], 
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Issue1279Table]

