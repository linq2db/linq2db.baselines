﻿BeforeExecute
-- SqlServer.2019
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) <> 0 OR @hid.IsDescendantOf([t].[HID]) IS NULL

