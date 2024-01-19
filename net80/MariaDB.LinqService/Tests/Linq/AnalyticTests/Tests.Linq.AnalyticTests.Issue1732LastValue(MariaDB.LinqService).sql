BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 10
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 20
DECLARE @Id Int32
SET     @Id = 6

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 30
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 40
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	LAST_VALUE(`p`.`Id`) OVER(ORDER BY `p`.`Order`)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Position`

