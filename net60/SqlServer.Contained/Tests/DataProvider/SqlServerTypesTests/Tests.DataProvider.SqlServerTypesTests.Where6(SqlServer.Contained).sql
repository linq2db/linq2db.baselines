BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/
DECLARE @True_1 Bit -- Boolean
SET     @True_1 = 1

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) = @True_1 AND [t].[ID] <> 1
ORDER BY
	[t].[HID]

