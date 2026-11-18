-- Sybase.Managed Sybase
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

