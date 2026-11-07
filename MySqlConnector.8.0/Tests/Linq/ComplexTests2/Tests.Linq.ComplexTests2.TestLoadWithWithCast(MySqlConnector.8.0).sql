-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Xy VarChar(5) -- String
SET     @Xy = 'Hallo'

INSERT INTO `ComplexEyes`
(
	`Id`,
	`Xy`
)
VALUES
(
	@Id,
	@Xy
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'FirstDog'
DECLARE @Discriminator VarChar(3) -- String
SET     @Discriminator = 'Dog'
DECLARE @EyeId Int32
SET     @EyeId = 1
DECLARE @DogName_Second VarChar(1) -- String
SET     @DogName_Second = 'b'
DECLARE @DogName_First VarChar(1) -- String
SET     @DogName_First = 'a'

INSERT INTO `ComplexAnimals`
(
	`AnimalType`,
	`AnimalType2`,
	`Id`,
	`Name`,
	`Discriminator`,
	`EyeId`,
	`Second`,
	`First`
)
VALUES
(
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator,
	@EyeId,
	@DogName_Second,
	@DogName_First
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @AnimalType VarChar(3) -- String
SET     @AnimalType = 'Big'
DECLARE @AnimalType2 VarChar(3) -- String
SET     @AnimalType2 = 'Big'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(10) -- String
SET     @Name = 'WildAnimal'
DECLARE @Discriminator VarChar(10) -- String
SET     @Discriminator = 'WildAnimal'

INSERT INTO `ComplexAnimals`
(
	`AnimalType`,
	`AnimalType2`,
	`Id`,
	`Name`,
	`Discriminator`
)
VALUES
(
	@AnimalType,
	@AnimalType2,
	@Id,
	@Name,
	@Discriminator
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TestAnimalId Int32
SET     @TestAnimalId = NULL

INSERT INTO `TestAnimalTable`
(
	`Id`,
	`TestAnimalId`
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TestAnimalId Int32
SET     @TestAnimalId = 1

INSERT INTO `TestAnimalTable`
(
	`Id`,
	`TestAnimalId`
)
VALUES
(
	@Id,
	@TestAnimalId
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`AnimalType`,
	`t1`.`AnimalType2`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Discriminator`,
	`t1`.`EyeId`,
	`t1`.`Second`,
	`t1`.`First`,
	`a_Bla`.`Id`,
	`a_Bla`.`Xy`
FROM
	`ComplexAnimals` `t1`
		LEFT JOIN `ComplexEyes` `a_Bla` ON `t1`.`EyeId` = `a_Bla`.`Id` AND `t1`.`Discriminator` = 'Dog'
ORDER BY
	`t1`.`Id`

