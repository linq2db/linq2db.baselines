﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

