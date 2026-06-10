-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO `StringTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	2,
	@data
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`,
	`t`.`Data`
FROM
	`StringTestTable` `t`
WHERE
	`t`.`ID` = 2
LIMIT 2

