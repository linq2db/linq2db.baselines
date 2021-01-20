BeforeExecute
-- SqlServer.2008

CREATE TABLE [AllTypesCustomMaxLength]
(
	[VarBinary] VarBinary(Max)     NULL,
	[VarChar]   VarChar(Max)       NULL,
	[NVarChar]  NVarChar(Max)      NULL
)

BeforeExecute
-- SqlServer.2008
DECLARE @VarChar_1 VarChar(10000) -- AnsiString
SET     @VarChar_1 = N'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'-- value above truncated for logging, actual length is 10000

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarChar]
)
VALUES
(
	@VarChar_1
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [AllTypesCustomMaxLength]

