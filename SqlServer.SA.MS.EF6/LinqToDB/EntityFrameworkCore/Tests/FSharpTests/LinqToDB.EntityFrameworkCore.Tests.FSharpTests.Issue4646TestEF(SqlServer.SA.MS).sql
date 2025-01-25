Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

SET NOCOUNT ON;
INSERT INTO [Issue4646Table] ([Value], [ValueN])
VALUES (@p0, @p1);
SELECT [Id]
FROM [Issue4646Table]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


