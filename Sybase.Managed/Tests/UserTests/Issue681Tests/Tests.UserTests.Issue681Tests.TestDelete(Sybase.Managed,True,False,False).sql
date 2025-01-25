BeforeExecute
-- Sybase.Managed Sybase

SELECT
	@@SERVERNAME

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [Issue681Table]
FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

