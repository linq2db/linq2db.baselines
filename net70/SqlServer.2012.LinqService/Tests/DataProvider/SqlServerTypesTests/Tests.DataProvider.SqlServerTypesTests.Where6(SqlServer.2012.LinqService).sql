﻿BeforeExecute
-- SqlServer.2012
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/
DECLARE @True Bit -- Boolean
SET     @True = 1

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) = @True AND [t].[ID] <> 1
ORDER BY
	[t].[HID]

