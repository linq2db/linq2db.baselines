BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

