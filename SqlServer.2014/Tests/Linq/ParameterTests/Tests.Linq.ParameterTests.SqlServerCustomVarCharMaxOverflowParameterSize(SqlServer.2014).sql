BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NOT NULL)
	DROP TABLE [AllTypesCustomMaxLength]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NULL)
	CREATE TABLE [AllTypesCustomMaxLength]
	(
		[VarBinary] VarBinary(Max)     NULL,
		[VarChar]   VarChar(Max)       NULL,
		[NVarChar]  NVarChar(Max)      NULL
	)

BeforeExecute
-- SqlServer.2014
DECLARE @VarChar VarChar -- AnsiString
SET     @VarChar = Tests.Linq.ParameterTests+VarChar

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarChar]
)
VALUES
(
	@VarChar
)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NOT NULL)
	DROP TABLE [AllTypesCustomMaxLength]

