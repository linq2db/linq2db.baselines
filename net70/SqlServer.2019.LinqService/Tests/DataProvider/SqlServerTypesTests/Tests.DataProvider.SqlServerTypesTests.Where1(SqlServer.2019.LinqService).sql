BeforeExecute
-- SqlServer.2019
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
	@hid.IsDescendantOf([t].[HID]) = @True

