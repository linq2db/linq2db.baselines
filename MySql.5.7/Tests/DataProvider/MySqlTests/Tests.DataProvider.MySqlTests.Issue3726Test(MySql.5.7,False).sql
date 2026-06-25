-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value UInt32
SET     @Value = 123
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL

INSERT INTO `issue3726table`
(
	`id`,
	`value`,
	`value2`
)
VALUES
(
	@Id,
	@Value,
	@Value2
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value2 VarChar(3) -- String
SET     @Value2 = 'Baz'
DECLARE @bar Int32
SET     @bar = 123

UPDATE
	`issue3726table` `f`
SET
	`f`.`value2` = @Value2
WHERE
	CAST(`f`.`value` AS SIGNED) = @bar

