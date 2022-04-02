BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
	@hid.IsDescendantOf([t].[HID]) = @True_1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[HID]
FROM
	[SqlTypes] [t1]

