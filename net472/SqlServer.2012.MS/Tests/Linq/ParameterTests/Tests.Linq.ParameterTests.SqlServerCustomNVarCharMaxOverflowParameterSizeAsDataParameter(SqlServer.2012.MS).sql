﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NOT NULL)
	DROP TABLE [AllTypesCustomMaxLength]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NULL)
	CREATE TABLE [AllTypesCustomMaxLength]
	(
		[VarBinary] VarBinary(Max)     NULL,
		[VarChar]   VarChar(Max)       NULL,
		[NVarChar]  NVarChar(Max)      NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @NVarChar NVarChar(5000) -- String
SET     @NVarChar = N'яяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяяя'
-- value above truncated for logging, actual length is 5000

INSERT INTO [AllTypesCustomMaxLength]
(
	[NVarChar]
)
VALUES
(
	@NVarChar
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AllTypesCustomMaxLength]', N'U') IS NOT NULL)
	DROP TABLE [AllTypesCustomMaxLength]

