BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1977Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NULL)
	CREATE TABLE [Issue1977Table]
	(
		[firstField]  UniqueIdentifier NOT NULL,
		[secondField] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue1977Table]
(
	[firstField],
	[secondField]
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN N'Issue1977Table/' + CAST([f].[firstField] AS VarChar(36)) + N'/' + CAST([f].[secondField] AS VarChar(36)) = SUBSTRING(((ISNULL((N'/' + N'Issue1977Table'), '') + ISNULL((N'/' + CAST([f].[firstField] AS NVarChar(36))), '')) + ISNULL((N'/' + CAST([f].[secondField] AS NVarChar(36))), '')), LEN(CONVERT(NVARCHAR(MAX), N'/') + N'!'), 8000)
			THEN 1
		ELSE 0
	END
FROM
	[Issue1977Table] [f]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1977Table]

