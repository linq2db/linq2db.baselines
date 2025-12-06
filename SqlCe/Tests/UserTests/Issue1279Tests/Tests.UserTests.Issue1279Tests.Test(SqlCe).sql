-- SqlCe
DECLARE @CharFld NVarChar -- String
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
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
	[Issue1279Table] [t1]

