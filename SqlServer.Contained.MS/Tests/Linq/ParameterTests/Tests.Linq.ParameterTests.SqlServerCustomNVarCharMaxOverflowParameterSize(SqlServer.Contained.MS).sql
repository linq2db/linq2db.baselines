BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [AllTypesCustomMaxLength]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NULL)
	CREATE TABLE [AllTypesCustomMaxLength]
	(
		[VarBinary] VarBinary(Max)     NULL,
		[VarChar]   VarChar(Max)       NULL,
		[NVarChar]  NVarChar(Max)      NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @NVarChar NVarChar -- String
SET     @NVarChar = Tests.Linq.ParameterTests+NVarChar

INSERT INTO [AllTypesCustomMaxLength]
(
	[NVarChar]
)
VALUES
(
	@NVarChar
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar -- String
SET     @p = Tests.Linq.ParameterTests+NVarChar

SELECT
	[t].[VarBinary],
	[t].[VarChar],
	[t].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t]
WHERE
	[t].[NVarChar] = @p AND [t].[NVarChar] IS NOT NULL

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [AllTypesCustomMaxLength]

