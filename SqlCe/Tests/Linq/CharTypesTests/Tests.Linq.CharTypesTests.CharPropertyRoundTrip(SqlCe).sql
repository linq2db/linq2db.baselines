-- SqlCe
DECLARE @CharFld NVarChar -- String
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- SqlCe
SELECT TOP (1)
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

