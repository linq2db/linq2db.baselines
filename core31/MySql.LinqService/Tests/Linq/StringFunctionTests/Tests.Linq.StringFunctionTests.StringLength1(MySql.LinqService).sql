BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `IsNullOrEmptyTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value VarChar(3) -- String
SET     @Value = '   '

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value VarChar -- String
SET     @Value = ''

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`IsNullOrEmptyTable` `p`
WHERE
	Char_Length(`p`.`Value`) = 0

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

