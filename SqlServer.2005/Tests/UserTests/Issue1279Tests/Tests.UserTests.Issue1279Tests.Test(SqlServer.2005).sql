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

-- SqlServer.2005

SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

