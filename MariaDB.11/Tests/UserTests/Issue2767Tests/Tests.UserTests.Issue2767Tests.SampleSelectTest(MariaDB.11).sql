-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
			`t1`.`id` as `Id`
		FROM
			`exercise` `t1`
				LEFT JOIN `ext_translations` `exerciseDescription` ON CAST(`t1`.`id` AS CHAR(11)) = `exerciseDescription`.`foreign_key` AND `exerciseDescription`.`locale` = @language AND `exerciseDescription`.`object_class` = @Exercise AND `exerciseDescription`.`field` = 'expl'
				LEFT JOIN `ext_translations` `exerciseStartDescription` ON CAST(`t1`.`id` AS CHAR(11)) = `exerciseStartDescription`.`foreign_key` AND `exerciseStartDescription`.`locale` = @language AND `exerciseStartDescription`.`object_class` = @Exercise AND `exerciseStartDescription`.`field` = 'startexpl'
	) `m_1`
		INNER JOIN `exercise_equipment_linker` `d` ON `m_1`.`Id` = `d`.`exercise_id`
		INNER JOIN `exercise_equipment` `equipment` ON `d`.`equipment_id` = `equipment`.`id`
		LEFT JOIN `ext_translations` `description` ON CAST(`equipment`.`id` AS CHAR(11)) = `description`.`foreign_key` AND `description`.`locale` = @currentLanguage AND `description`.`object_class` = @Equipment AND `description`.`field` = 'name'
ORDER BY
	`m_1`.`Id` DESC

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @language VarChar(2) -- String
SET     @language = 'en'
DECLARE @Exercise VarChar(1) -- String
SET     @Exercise = '1'

SELECT
	`t1`.`id`,
	`t1`.`is_private`,
	`t1`.`number`,
	`t1`.`level`,
	CASE
		WHEN `exerciseDescription`.`id` IS NOT NULL THEN `exerciseDescription`.`content`
		ELSE `t1`.`expl`
	END,
	`t1`.`reeks`,
	`t1`.`num`,
	`t1`.`time`,
	`t1`.`rest`,
	`t1`.`side`,
	`t1`.`image`,
	`t1`.`video`,
	CASE
		WHEN `exerciseStartDescription`.`id` IS NOT NULL THEN `exerciseStartDescription`.`content`
		ELSE `t1`.`startexpl`
	END
FROM
	`exercise` `t1`
		LEFT JOIN `ext_translations` `exerciseDescription` ON CAST(`t1`.`id` AS CHAR(11)) = `exerciseDescription`.`foreign_key` AND `exerciseDescription`.`locale` = @language AND `exerciseDescription`.`object_class` = @Exercise AND `exerciseDescription`.`field` = 'expl'
		LEFT JOIN `ext_translations` `exerciseStartDescription` ON CAST(`t1`.`id` AS CHAR(11)) = `exerciseStartDescription`.`foreign_key` AND `exerciseStartDescription`.`locale` = @language AND `exerciseStartDescription`.`object_class` = @Exercise AND `exerciseStartDescription`.`field` = 'startexpl'
ORDER BY
	`t1`.`timestamp` DESC,
	`t1`.`id` DESC

