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
DECLARE @CharFld NChar -- StringFixedLength
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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[Id], 
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1279Table]

