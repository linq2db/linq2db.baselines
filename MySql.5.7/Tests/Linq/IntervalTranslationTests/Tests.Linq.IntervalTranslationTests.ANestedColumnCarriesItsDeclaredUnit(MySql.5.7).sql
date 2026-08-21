-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Declared_Elapsed Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed Int64
SET     @Converted_Elapsed = 5400

INSERT INTO `NestedDurationRow`
(
	`Id`,
	`Declared`,
	`Converted`
)
VALUES
(
	@Id,
	@Declared_Elapsed,
	@Converted_Elapsed
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Declared`,
	`t1`.`Converted`
FROM
	`NestedDurationRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`r`.`Declared` AS DECIMAL(29, 10)) / 60
FROM
	`NestedDurationRow` `r`
LIMIT 2

