﻿BeforeExecute
-- SqlServer.2008
DECLARE @hid_1 hierarchyid -- Udt -- Object
SET     @hid_1 = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid_1.IsDescendantOf([t].[HID]) = 1

