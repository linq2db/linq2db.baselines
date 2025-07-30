BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable Datetime -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable Datetime -- DateTime
SET     @DateTimeNullable = '2018-11-25 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`DateTimeNullable`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

