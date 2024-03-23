BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Data`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Data`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SubData1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SubData2`
(
	`Id`     INT           NOT NULL,
	`Reason` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	`m_1`.`Id`,
	`d`.`Reason`
FROM
	(
		SELECT DISTINCT
			`a_SubData`.`Id`
		FROM
			`Data` `i`
				LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
	) `m_1`
		INNER JOIN `SubData2` `d` ON `m_1`.`Id` IS NOT NULL AND `m_1`.`Id` = `d`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`i`.`Id`,
	`a_SubData`.`Id`
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Data`

