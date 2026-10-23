-- SqlServer.2016.MS SqlServer.2016
DECLARE @date NVarChar(4000) -- String
SET     @date = N'2022-02-24'

SELECT
	MONTH(@date)

