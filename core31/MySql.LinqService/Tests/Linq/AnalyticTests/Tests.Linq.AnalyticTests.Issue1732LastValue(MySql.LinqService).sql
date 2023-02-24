BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 10
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 20
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 30
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Group_1 Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int32
SET     @Order_1 = 40
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
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	`p`.`Id`,
	LAST_VALUE(`p`.`Id`) OVER(ORDER BY `p`.`Order`)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group_1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Position`

