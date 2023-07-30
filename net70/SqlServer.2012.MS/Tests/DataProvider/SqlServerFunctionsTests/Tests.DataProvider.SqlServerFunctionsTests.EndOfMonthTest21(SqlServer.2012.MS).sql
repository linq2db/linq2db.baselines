BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @date NVarChar(4000) -- String
SET     @date = N'2022-02-24'

SELECT
	EOMONTH(@date, 1)

