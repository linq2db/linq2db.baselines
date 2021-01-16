BeforeExecute
-- SqlServer.2005

CREATE TABLE [AllTypesCustomMaxLength]
(
	[VarBinary] VarBinary(Max)     NULL,
	[VarChar]   VarChar(Max)       NULL,
	[NVarChar]  NVarChar(Max)      NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @VarChar_1 VarChar -- AnsiString
SET     @VarChar_1 = Tests.Linq.ParameterTests+VarChar

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarChar]
)
VALUES
(
	@VarChar_1
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [AllTypesCustomMaxLength]

