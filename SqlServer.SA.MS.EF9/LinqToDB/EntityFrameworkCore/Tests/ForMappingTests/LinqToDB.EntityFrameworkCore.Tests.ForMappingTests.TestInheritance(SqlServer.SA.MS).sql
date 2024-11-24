Parameters:
@p0='?' (Size = 21), @p1='?' (Size = 21), @p2='?' (Size = 21), @p3='?' (Size = 21), @p4='?' (Size = 21)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
MERGE [WithInheritance] USING (
VALUES (@p0, 0),
(@p1, 1),
(@p2, 2),
(@p3, 3),
(@p4, 4)) AS i ([Discriminator], _Position) ON 1=0
WHEN NOT MATCHED THEN
INSERT ([Discriminator])
VALUES (i.[Discriminator])
OUTPUT INSERTED.[Id], i._Position;


--  SqlServer.2019

SELECT
	IIF([t1].[Discriminator] = N'WithInheritanceA2', 1, 0),
	[t1].[Id],
	[t1].[Discriminator],
	IIF([t1].[Discriminator] = N'WithInheritanceA1', 1, 0),
	IIF([t1].[Discriminator] = N'WithInheritanceA', 1, 0),
	IIF([t1].[Discriminator] = N'WithInheritance', 1, 0)
FROM
	[WithInheritance] [t1]
WHERE
	[t1].[Discriminator] = N'WithInheritanceA' OR [t1].[Discriminator] = N'WithInheritanceA1' OR
	[t1].[Discriminator] = N'WithInheritanceA2'



