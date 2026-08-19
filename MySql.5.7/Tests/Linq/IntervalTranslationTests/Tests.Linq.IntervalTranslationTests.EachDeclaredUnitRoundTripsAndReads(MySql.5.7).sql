-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 2
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 7000123400

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`InDays`,
	`t1`.`InMilliseconds`,
	`t1`.`InNanoseconds`
FROM
	`UnitSpreadRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`r`.`InDays` * 24 AS DECIMAL(29, 10)),
	CAST((`r`.`InMilliseconds` DIV 1000) % 60 AS SIGNED)
FROM
	`UnitSpreadRow` `r`
LIMIT 2

