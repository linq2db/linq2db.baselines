﻿BeforeExecute
--  SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

