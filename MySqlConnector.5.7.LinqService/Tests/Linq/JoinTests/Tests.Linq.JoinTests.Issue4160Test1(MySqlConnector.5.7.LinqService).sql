BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4160Person`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4160Person`
(
	`Code` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
(
	@Code
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4160City`
(
	`Code` VARCHAR(4000)     NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`Issue4160City` `cc`
		WHERE
			`cc`.`Code` = `pe`.`Code` AND `cc`.`Code` IS NOT NULL AND `pe`.`Code` IS NOT NULL OR
			`cc`.`Code` IS NULL AND `pe`.`Code` IS NULL
		LIMIT 1
	)
FROM
	`Issue4160Person` `pe`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4160Person`

