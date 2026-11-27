-- SqlServer.2016.MS SqlServer.2016
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = N'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

