﻿BeforeExecute
-- SqlCe (asynchronously)
DECLARE @CharFld NVarChar -- String
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

