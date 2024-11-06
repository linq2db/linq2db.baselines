BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_BaseThing`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_BaseThing`
(
	`Id`                INT NOT NULL,
	`Type`              INT NOT NULL,
	`BaseField`         INT NOT NULL,
	`ConcreteField`     INT     NULL,
	`IntermediateField` INT     NULL,

	CONSTRAINT `PK_Issue4364_BaseThing` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @BaseField Int32
SET     @BaseField = 2

INSERT INTO `Issue4364_BaseThing`
(
	`Id`,
	`Type`,
	`BaseField`
)
VALUES
(
	@Id,
	@Type,
	@BaseField
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Type Int32
SET     @Type = 2
DECLARE @BaseField Int32
SET     @BaseField = 3
DECLARE @ConcreteField Int32
SET     @ConcreteField = 4

INSERT INTO `Issue4364_BaseThing`
(
	`Id`,
	`Type`,
	`BaseField`,
	`ConcreteField`
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@ConcreteField
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Type Int32
SET     @Type = 101
DECLARE @BaseField Int32
SET     @BaseField = 4
DECLARE @IntermediateField Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Int32
SET     @ConcreteField = 5

INSERT INTO `Issue4364_BaseThing`
(
	`Id`,
	`Type`,
	`BaseField`,
	`IntermediateField`,
	`ConcreteField`
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField,
	@ConcreteField
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Type Int32
SET     @Type = 102
DECLARE @BaseField Int32
SET     @BaseField = 5
DECLARE @IntermediateField Int32
SET     @IntermediateField = 6

INSERT INTO `Issue4364_BaseThing`
(
	`Id`,
	`Type`,
	`BaseField`,
	`IntermediateField`
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_Person`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_Person`
(
	`Id`       INT           NOT NULL,
	`FullName` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue4364_Person` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 1'

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 2'

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 3'

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 4'

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 5
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 5'

INSERT INTO `Issue4364_Person`
(
	`Id`,
	`FullName`
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_Interaction`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4364_Interaction`
(
	`Id`       INT NOT NULL,
	`PersonId` INT NOT NULL,
	`ThingId`  INT NOT NULL,

	CONSTRAINT `PK_Issue4364_Interaction` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @PersonId Int32
SET     @PersonId = 2
DECLARE @ThingId Int32
SET     @ThingId = 3

INSERT INTO `Issue4364_Interaction`
(
	`Id`,
	`PersonId`,
	`ThingId`
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @PersonId Int32
SET     @PersonId = 3
DECLARE @ThingId Int32
SET     @ThingId = 4

INSERT INTO `Issue4364_Interaction`
(
	`Id`,
	`PersonId`,
	`ThingId`
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @PersonId Int32
SET     @PersonId = 4
DECLARE @ThingId Int32
SET     @ThingId = 1

INSERT INTO `Issue4364_Interaction`
(
	`Id`,
	`PersonId`,
	`ThingId`
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @PersonId Int32
SET     @PersonId = 1
DECLARE @ThingId Int32
SET     @ThingId = 2

INSERT INTO `Issue4364_Interaction`
(
	`Id`,
	`PersonId`,
	`ThingId`
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Type`,
	`p`.`FullName`
FROM
	`Issue4364_BaseThing` `x`
		INNER JOIN `Issue4364_Interaction` `i` ON `x`.`Id` = `i`.`ThingId`
		INNER JOIN `Issue4364_Person` `p` ON `i`.`PersonId` = `p`.`Id`
WHERE
	`x`.`Type` = 101 OR `x`.`Type` = 102
ORDER BY
	`x`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_Interaction`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_Person`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4364_BaseThing`

