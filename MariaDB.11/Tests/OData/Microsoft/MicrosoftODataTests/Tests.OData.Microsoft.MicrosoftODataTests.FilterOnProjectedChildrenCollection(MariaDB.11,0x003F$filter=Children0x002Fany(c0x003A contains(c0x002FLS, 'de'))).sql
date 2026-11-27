-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TypedProperty VarChar(2) -- String
SET     @TypedProperty = 'de'

SELECT
	`m_1`.`ID`,
	`m_1`.`ValS`,
	`d`.`ID`,
	`d`.`ValB`,
	`d`.`ValInt`
FROM
	`ODataLevel1Entity` `m_1`
		INNER JOIN `ODataLevel2Entity` `d` ON `m_1`.`ID` = `d`.`ParentId`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`ODataLevel2Entity` `c_1`
		WHERE
			`m_1`.`ID` = `c_1`.`ParentId` AND LOCATE(@TypedProperty, `m_1`.`ValS`) > 0 AND
			`m_1`.`ValS` IS NOT NULL
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @TypedProperty VarChar(2) -- String
SET     @TypedProperty = 'de'

SELECT
	`it`.`ID`,
	`it`.`ValB`,
	`it`.`ValS`,
	`it`.`ValInt`
FROM
	`ODataLevel1Entity` `it`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`ODataLevel2Entity` `c_1`
		WHERE
			`it`.`ID` = `c_1`.`ParentId` AND LOCATE(@TypedProperty, `it`.`ValS`) > 0 AND
			`it`.`ValS` IS NOT NULL
	)

