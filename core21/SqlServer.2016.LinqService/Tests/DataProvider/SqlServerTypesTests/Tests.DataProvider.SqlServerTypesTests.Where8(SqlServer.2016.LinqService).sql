﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @hid_1 hierarchyid -- Udt -- Object
SET     @hid_1 = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	(@hid_1.IsDescendantOf([t].[HID]) = 1 AND @hid_1.IsDescendantOf([t].[HID]) IS NOT NULL)

