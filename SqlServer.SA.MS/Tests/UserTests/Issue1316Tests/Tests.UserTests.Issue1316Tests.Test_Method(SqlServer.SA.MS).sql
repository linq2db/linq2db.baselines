﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @p

