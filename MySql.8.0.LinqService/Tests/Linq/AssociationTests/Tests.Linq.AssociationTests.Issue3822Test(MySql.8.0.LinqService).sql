BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Dog`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Dog`
(
	`Id`      INT NOT NULL,
	`OwnerId` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @OwnerId Int32
SET     @OwnerId = 1

INSERT INTO `Dog`
(
	`Id`,
	`OwnerId`
)
VALUES
(
	@Id,
	@OwnerId
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Human`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Human`
(
	`Id`      INT NOT NULL,
	`HouseId` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @HouseId Int32
SET     @HouseId = 1

INSERT INTO `Human`
(
	`Id`,
	`HouseId`
)
VALUES
(
	@Id,
	@HouseId
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `House`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `House`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `House`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Window`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Window`
(
	`Id`       INT NOT NULL,
	`Position` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Position Int32
SET     @Position = 6

INSERT INTO `Window`
(
	`Id`,
	`Position`
)
VALUES
(
	@Id,
	@Position
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Dog` `x`
		INNER JOIN `Human` `a_Owner` ON `x`.`OwnerId` = `a_Owner`.`Id`
		INNER JOIN `House` `a_House` ON `a_Owner`.`HouseId` = `a_House`.`Id`
		LEFT JOIN (
			SELECT
				`a_WindowAtPosition`.`Id`
			FROM
				`Window` `a_WindowAtPosition`
			WHERE
				`a_WindowAtPosition`.`Position` = 6
			LIMIT 1
		) `t1` ON 1=1
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Window`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `House`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Human`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Dog`

