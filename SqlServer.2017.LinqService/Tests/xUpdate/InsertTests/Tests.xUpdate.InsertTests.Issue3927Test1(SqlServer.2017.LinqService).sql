BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue3927Table]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue3927Table]', N'U') IS NULL)
	CREATE TABLE [Issue3927Table]
	(
		[SerialNumber] Char(11) NOT NULL,
		[PageNumber]   Int      NOT NULL,

		CONSTRAINT [PK_Issue3927Table] PRIMARY KEY CLUSTERED ([SerialNumber])
	)

BeforeExecute
-- SqlServer.2017
DECLARE @PageNumber Int -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = N'12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@PageNumber
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue3927Table]

