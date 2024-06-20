﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4160Person`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4160Person`
(
	`Code` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4160City`
(
	`Code` VARCHAR(4000)     NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`Issue4160City` `cc`
		WHERE
			(`cc`.`Code` = `pe`.`Code` OR `cc`.`Code` IS NULL AND `pe`.`Code` IS NULL)
		LIMIT 1
	)
FROM
	`Issue4160Person` `pe`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4160Person`

