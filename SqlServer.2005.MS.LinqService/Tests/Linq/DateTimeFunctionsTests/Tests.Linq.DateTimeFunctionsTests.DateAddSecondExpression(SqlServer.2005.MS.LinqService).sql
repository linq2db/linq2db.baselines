﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 41

SELECT
	DatePart(second, DateAdd(second, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

