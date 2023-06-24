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
DECLARE @Value VarChar(4) -- String
SET     @Value = 'x   '

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'xxxx '

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
	Char_Length(`p`.`Value`) = 4

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

