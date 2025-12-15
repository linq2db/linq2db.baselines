-- Sybase.Managed Sybase
DECLARE @A123456789b123456789c12345 Integer -- Int32
SET     @A123456789b123456789c12345 = 2

UPDATE
	[testparams]
SET
	[col1] = @A123456789b123456789c12345
WHERE
	[testparams].[Column1] = 1

