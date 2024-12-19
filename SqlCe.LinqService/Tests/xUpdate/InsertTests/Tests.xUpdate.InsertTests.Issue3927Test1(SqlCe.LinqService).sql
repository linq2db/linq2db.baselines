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

BeforeExecute
-- SqlCe

DROP TABLE [Issue3927Table]

