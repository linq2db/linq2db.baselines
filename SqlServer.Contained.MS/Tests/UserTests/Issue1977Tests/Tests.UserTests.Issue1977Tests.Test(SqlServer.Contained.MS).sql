BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1977Table]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1977Table]', N'U') IS NULL)
	CREATE TABLE [Issue1977Table]
	(
		[firstField]  UniqueIdentifier NOT NULL,
		[secondField] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Issue1977Table]
(
	[firstField],
	[secondField]
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF([f_1].[oldStr] = [f_1].[newStr] AND [f_1].[newStr] IS NOT NULL, 1, 0)
FROM
	(
		SELECT
			N'Issue1977Table/' + CAST([f].[firstField] AS VarChar(36)) + N'/' + CAST([f].[secondField] AS VarChar(36)) as [oldStr],
			CONCAT_WS(N'/', N'Issue1977Table', CAST([f].[firstField] AS NVarChar(36)), CAST([f].[secondField] AS NVarChar(36))) as [newStr]
		FROM
			[Issue1977Table] [f]
	) [f_1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1977Table]

