﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1977Table]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NULL)
	CREATE TABLE [Issue1977Table]
	(
		[firstField]  UniqueIdentifier NOT NULL,
		[secondField] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Issue1977Table]
(
	[firstField],
	[secondField]
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- SqlServer.2014

SELECT
	IIF(N'Issue1977Table/' + Convert(VarChar(36), [f].[firstField]) + N'/' + Convert(VarChar(36), [f].[secondField]) = SUBSTRING(((ISNULL((N'/' + N'Issue1977Table'), '') + ISNULL((N'/' + Convert(NVarChar(36), [f].[firstField])), '')) + ISNULL((N'/' + Convert(NVarChar(36), [f].[secondField])), '')), LEN(CONVERT(NVARCHAR(MAX), N'/') + N'!'), 8000), 1, 0)
FROM
	[Issue1977Table] [f]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1977Table]

