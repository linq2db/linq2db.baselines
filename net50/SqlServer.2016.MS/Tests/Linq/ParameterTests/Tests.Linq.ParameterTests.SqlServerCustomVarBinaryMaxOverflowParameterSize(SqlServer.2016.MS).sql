BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [AllTypesCustomMaxLength]
(
	[VarBinary] VarBinary(Max)     NULL,
	[VarChar]   VarChar(Max)       NULL,
	[NVarChar]  NVarChar(Max)      NULL
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @VarBinary VarBinary -- Binary
SET     @VarBinary = Tests.Linq.ParameterTests+VarBinary

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarBinary]
)
VALUES
(
	@VarBinary
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [AllTypesCustomMaxLength]

