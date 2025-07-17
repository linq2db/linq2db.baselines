Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [Issue4646Table] ([Value], [ValueN])
OUTPUT INSERTED.[Id]
VALUES (@p0, @p1);


-- SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueN]
FROM
	[Issue4646Table] [t1]



