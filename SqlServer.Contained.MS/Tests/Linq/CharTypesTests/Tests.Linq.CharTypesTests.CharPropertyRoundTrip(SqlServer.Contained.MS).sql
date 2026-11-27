-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

