﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008
DECLARE @date NVarChar(4000) -- String
SET     @date = N'2022-02-24'

SELECT
	MONTH(@date)

