﻿BeforeExecute
-- SqlServer.2017
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) = 1 AND @hid.IsDescendantOf([t].[HID]) IS NOT NULL

