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


-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Discriminator],
	[t1].[Id]
FROM
	[WithInheritance] [t1]
WHERE
	[t1].[Discriminator] IN (N'WithInheritanceA2', N'WithInheritanceA1', N'WithInheritanceA')



