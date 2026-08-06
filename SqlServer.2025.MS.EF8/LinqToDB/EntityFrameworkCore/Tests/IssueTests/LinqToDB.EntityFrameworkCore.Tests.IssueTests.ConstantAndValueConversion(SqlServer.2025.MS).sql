Parameters:
@p0='?' (DbType = Int16), @p1='?' (DbType = Int16)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
MERGE [Issue5388Task] USING (
VALUES (@p0, 0),
(@p1, 1)) AS i ([IsArchived], _Position) ON 1=0
WHEN NOT MATCHED THEN
INSERT ([IsArchived])
VALUES (i.[IsArchived])
OUTPUT INSERTED.[Id], i._Position;


-- SqlServer.2025
DECLARE @IsArchived SmallInt -- Int16
SET     @IsArchived = 0

SELECT
	[t].[Id],
	[t].[IsArchived]
FROM
	[Issue5388Task] [t]
WHERE
	[t].[IsArchived] = @IsArchived



