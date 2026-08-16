-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 0
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 0
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 7000000000

INSERT INTO `UnitSpreadRow`
(
	`Id`,
	`InDays`,
	`InMilliseconds`,
	`InNanoseconds`
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`InNanoseconds`
FROM
	`UnitSpreadRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`InDays`,
	`t1`.`InMilliseconds`,
	`t1`.`InNanoseconds`
FROM
	`UnitSpreadRow` `t1`
LIMIT 2

