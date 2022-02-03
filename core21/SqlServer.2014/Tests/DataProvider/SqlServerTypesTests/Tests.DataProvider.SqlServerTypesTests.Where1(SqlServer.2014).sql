BeforeExecute
-- SqlServer.2014
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) = 1

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[HID]
FROM
	[SqlTypes] [t1]

