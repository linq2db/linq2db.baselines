-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Enabled`,
	`t1`.`ImageFullUrl`
FROM
	(
		SELECT
			`sG`.`Name`
		FROM
			`Stone` `sG`
		WHERE
			`sG`.`Enabled` = 1 AND `sG`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
			CHAR_LENGTH(`sG`.`ImageFullUrl`) > 0
		GROUP BY
			`sG`.`Name`
	) `sG_1`
		INNER JOIN LATERAL (
			SELECT
				`s`.`Id`,
				`s`.`Name`,
				`s`.`Enabled`,
				`s`.`ImageFullUrl`
			FROM
				`Stone` `s`
			WHERE
				`s`.`Enabled` = 1 AND
				`s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
				CHAR_LENGTH(`s`.`ImageFullUrl`) > 0 AND
				`sG_1`.`Name` = `s`.`Name`
			LIMIT 1
		) `t1` ON 1=1

