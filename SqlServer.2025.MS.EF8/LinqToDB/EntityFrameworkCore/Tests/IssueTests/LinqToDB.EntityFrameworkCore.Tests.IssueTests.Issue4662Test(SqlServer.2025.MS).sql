Parameters:
@p0='?' (Size = 50)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [Issue4662] ([Value])
OUTPUT INSERTED.[Id]
VALUES (@p0);


-- SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4662] [t1]



