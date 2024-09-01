Parameters:
@p0='?' (Size = 21), @p1='?' (Size = 21), @p2='?' (Size = 21), @p3='?' (Size = 21), @p4='?' (Size = 21)

INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p0)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p1)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p2)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p3)
RETURNING `Id`;
INSERT INTO `WithInheritance` (`Discriminator`)
VALUES (@p4)
RETURNING `Id`;


