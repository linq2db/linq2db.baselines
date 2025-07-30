BeforeExecute
-- SqlCe
DECLARE @PageNumber Int -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber NVarChar(11) -- String
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@PageNumber as [c1]
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

