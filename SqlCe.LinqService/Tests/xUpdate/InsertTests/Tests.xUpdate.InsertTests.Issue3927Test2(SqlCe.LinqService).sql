BeforeExecute
-- SqlCe (asynchronously)
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber NVarChar(11) -- String
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@pageNumber as [c1]
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

