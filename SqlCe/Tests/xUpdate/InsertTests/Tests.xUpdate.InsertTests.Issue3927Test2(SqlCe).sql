BeforeExecute
-- SqlCe

DROP TABLE [Issue3927Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3927Table]
(
	[SerialNumber] NChar(11) NOT NULL,
	[PageNumber]   Int       NOT NULL,

	CONSTRAINT [PK_Issue3927Table] PRIMARY KEY ([SerialNumber])
)

BeforeExecute
-- SqlCe
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

BeforeExecute
-- SqlCe

DROP TABLE [Issue3927Table]

