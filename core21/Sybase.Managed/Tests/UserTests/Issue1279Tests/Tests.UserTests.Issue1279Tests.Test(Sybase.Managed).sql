BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1279Table]
(
	[Id]      Int      IDENTITY NOT NULL,
	[CharFld] NChar(1)          NOT NULL,

	CONSTRAINT [PK_Issue1279Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @CharFld UniChar -- StringFixedLength
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
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t1].[Id], 
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1279Table]

