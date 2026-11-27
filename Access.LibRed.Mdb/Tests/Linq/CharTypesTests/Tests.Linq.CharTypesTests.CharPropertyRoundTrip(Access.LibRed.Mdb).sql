-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @CharFld NChar -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

