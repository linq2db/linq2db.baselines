-- Sybase.Managed Sybase
DECLARE @CharFld UniChar -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

