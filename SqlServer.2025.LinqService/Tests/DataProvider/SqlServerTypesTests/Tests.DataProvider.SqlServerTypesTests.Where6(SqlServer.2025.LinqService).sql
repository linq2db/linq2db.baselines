BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @hid hierarchyid -- Udt -- Object
SET     @hid = /1/

SELECT
	[t].[ID],
	[t].[HID]
FROM
	[SqlTypes] [t]
WHERE
	@hid.IsDescendantOf([t].[HID]) = 1 AND [t].[ID] <> 1
ORDER BY
	[t].[HID]

