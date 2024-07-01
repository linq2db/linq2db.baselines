BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3927Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3927Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3927Table]', N'U') IS NULL)
	CREATE TABLE [Issue3927Table]
	(
		[SerialNumber] Char(11) NOT NULL,
		[PageNumber]   Int      NOT NULL,

		CONSTRAINT [PK_Issue3927Table] PRIMARY KEY CLUSTERED ([SerialNumber])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = N'12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@pageNumber
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue3927Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3927Table]

