BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `exercise`
(
	`id`         INT           NOT NULL,
	`name`       VARCHAR(4000)     NULL,
	`number`     INT               NULL,
	`startexpl`  VARCHAR(4000)     NULL,
	`level`      INT           NOT NULL,
	`expl`       VARCHAR(4000) NOT NULL,
	`date`       DATETIME      NOT NULL,
	`image`      VARCHAR(4000)     NULL,
	`video`      VARCHAR(4000)     NULL,
	`num`        INT           NOT NULL,
	`side`       INT           NOT NULL,
	`reeks`      INT           NOT NULL,
	`time`       INT           NOT NULL,
	`rest`       INT           NOT NULL,
	`weight`     INT           NOT NULL,
	`is_private` BOOLEAN       NOT NULL,
	`timestamp`  DATETIME      NOT NULL,

	CONSTRAINT `PK_exercise` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `exercise`
(
	`id`,
	`name`,
	`number`,
	`startexpl`,
	`level`,
	`expl`,
	`date`,
	`image`,
	`video`,
	`num`,
	`side`,
	`reeks`,
	`time`,
	`rest`,
	`weight`,
	`is_private`,
	`timestamp`
)
VALUES
(3438,'ex1',NULL,NULL,0,'desc 1','2020-02-29 17:54:55.123',NULL,NULL,0,0,0,0,0,0,0,'2020-02-29 17:54:55.123'),
(3440,'ex2',NULL,NULL,0,'desc 2','2020-02-29 17:54:55.123',NULL,NULL,0,0,0,0,0,0,0,'2020-02-29 17:54:55.123'),
(3441,'ex3',NULL,NULL,0,'desc 3','2020-02-29 17:54:55.123',NULL,NULL,0,0,0,0,0,0,0,'2020-02-29 17:54:55.123')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ext_translations`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `ext_translations`
(
	`id`           INT           NOT NULL,
	`locale`       VARCHAR(4000) NOT NULL,
	`object_class` VARCHAR(4000) NOT NULL,
	`field`        VARCHAR(4000) NOT NULL,
	`foreign_key`  VARCHAR(4000) NOT NULL,
	`content`      VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ext_translations` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise_equipment_linker`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `exercise_equipment_linker`
(
	`exercise_id`  INT NOT NULL,
	`equipment_id` INT NOT NULL,

	CONSTRAINT `PK_exercise_equipment_linker` PRIMARY KEY CLUSTERED (`exercise_id`, `equipment_id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `exercise_equipment_linker`
(
	`exercise_id`,
	`equipment_id`
)
VALUES
(3438,50),
(3438,83),
(3440,59),
(3441,41)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise_equipment`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `exercise_equipment`
(
	`id`                       INT           NOT NULL,
	`parent_id`                INT               NULL,
	`name`                     VARCHAR(4000) NOT NULL,
	`icon`                     VARCHAR(4000)     NULL,
	`online`                   BOOLEAN       NOT NULL,
	`user_id`                  INT               NULL,
	`original_creator_id`      INT               NULL,
	`is_private`               BOOLEAN       NOT NULL,
	`organisation_id`          INT               NULL,
	`original_organisation_id` INT               NULL,

	CONSTRAINT `PK_exercise_equipment` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `exercise_equipment`
(
	`id`,
	`parent_id`,
	`name`,
	`icon`,
	`online`,
	`user_id`,
	`original_creator_id`,
	`is_private`,
	`organisation_id`,
	`original_organisation_id`
)
VALUES
(50,NULL,'AB wheel',NULL,0,NULL,NULL,0,NULL,NULL),
(83,NULL,'Airex balance beam',NULL,0,NULL,NULL,0,NULL,NULL),
(59,NULL,'Matje (geen materiaal)',NULL,0,NULL,NULL,0,NULL,NULL),
(41,NULL,'Bosu',NULL,0,NULL,NULL,0,NULL,NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @language VarChar(2) -- String
SET     @language = 'en'
DECLARE @Exercise VarChar(1) -- String
SET     @Exercise = '1'
DECLARE @currentLanguage VarChar(2) -- String
SET     @currentLanguage = 'en'
DECLARE @Equipment VarChar(1) -- String
SET     @Equipment = '2'

SELECT
	`m_1`.`Id`,
	`equipment`.`id`,
	`equipment`.`parent_id`,
	`equipment`.`name`,
	`equipment`.`icon`,
	`equipment`.`online`,
	`equipment`.`user_id`,
	`equipment`.`original_creator_id`,
	`equipment`.`is_private`,
	`equipment`.`organisation_id`,
	`equipment`.`original_organisation_id`,
	`description`.`content`,
	`description`.`id`
FROM
	(
		SELECT DISTINCT
			`exercise_1`.`id` as `Id`
		FROM
			`exercise` `exercise_1`
				LEFT JOIN `ext_translations` `exerciseDescription` ON CAST(`exercise_1`.`id` AS CHAR(11)) = `exerciseDescription`.`foreign_key` AND `exerciseDescription`.`locale` = @language AND `exerciseDescription`.`object_class` = @Exercise AND `exerciseDescription`.`field` = 'expl'
				LEFT JOIN `ext_translations` `exerciseStartDescription` ON CAST(`exercise_1`.`id` AS CHAR(11)) = `exerciseStartDescription`.`foreign_key` AND `exerciseStartDescription`.`locale` = @language AND `exerciseStartDescription`.`object_class` = @Exercise AND `exerciseStartDescription`.`field` = 'startexpl'
	) `m_1`
		INNER JOIN `exercise_equipment_linker` `d` ON `m_1`.`Id` = `d`.`exercise_id`
		INNER JOIN `exercise_equipment` `equipment` ON `d`.`equipment_id` = `equipment`.`id`
		LEFT JOIN `ext_translations` `description` ON CAST(`equipment`.`id` AS CHAR(11)) = `description`.`foreign_key` AND `description`.`locale` = @currentLanguage AND `description`.`object_class` = @Equipment AND `description`.`field` = 'name'

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @language VarChar(2) -- String
SET     @language = 'en'
DECLARE @Exercise VarChar(1) -- String
SET     @Exercise = '1'

SELECT
	`exercise_1`.`id`,
	`exercise_1`.`is_private`,
	`exercise_1`.`number`,
	`exercise_1`.`level`,
	CASE
		WHEN `exerciseDescription`.`id` IS NOT NULL THEN `exerciseDescription`.`content`
		ELSE `exercise_1`.`expl`
	END,
	`exercise_1`.`reeks`,
	`exercise_1`.`num`,
	`exercise_1`.`time`,
	`exercise_1`.`rest`,
	`exercise_1`.`side`,
	`exercise_1`.`image`,
	`exercise_1`.`video`,
	CASE
		WHEN `exerciseStartDescription`.`id` IS NOT NULL THEN `exerciseStartDescription`.`content`
		ELSE `exercise_1`.`startexpl`
	END
FROM
	`exercise` `exercise_1`
		LEFT JOIN `ext_translations` `exerciseDescription` ON CAST(`exercise_1`.`id` AS CHAR(11)) = `exerciseDescription`.`foreign_key` AND `exerciseDescription`.`locale` = @language AND `exerciseDescription`.`object_class` = @Exercise AND `exerciseDescription`.`field` = 'expl'
		LEFT JOIN `ext_translations` `exerciseStartDescription` ON CAST(`exercise_1`.`id` AS CHAR(11)) = `exerciseStartDescription`.`foreign_key` AND `exerciseStartDescription`.`locale` = @language AND `exerciseStartDescription`.`object_class` = @Exercise AND `exerciseStartDescription`.`field` = 'startexpl'
ORDER BY
	`exercise_1`.`timestamp` DESC,
	`exercise_1`.`id` DESC

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise_equipment`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise_equipment_linker`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ext_translations`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `exercise`

