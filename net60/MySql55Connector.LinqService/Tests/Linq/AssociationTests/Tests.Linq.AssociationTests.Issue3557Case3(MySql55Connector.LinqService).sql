BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Data`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Data`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `Data`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `Data`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `SubData1`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `SubData1`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData2`
(
	`Id`     INT           NOT NULL,
	`Reason` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = 'прст1'

INSERT INTO `SubData2`
(
	`Id`,
	`Reason`
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = 'прст2'

INSERT INTO `SubData2`
(
	`Id`,
	`Reason`
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`i`.`Id`,
	(
		SELECT
			`s`.`Reason`
		FROM
			`SubData2` `s`
		WHERE
			`a_SubData`.`Id` = `s`.`Id`
		LIMIT @take
	)
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

