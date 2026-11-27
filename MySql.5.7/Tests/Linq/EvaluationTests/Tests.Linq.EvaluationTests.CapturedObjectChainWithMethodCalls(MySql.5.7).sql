-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `ClientEvaluatedRecord`
(
	`ID`
)
VALUES
(
	@ID
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 5

SELECT
	`t1`.`ID`
FROM
	`ClientEvaluatedRecord` `t1`
WHERE
	`t1`.`ID` = @p
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 5

SELECT
	`t1`.`ID`
FROM
	`ClientEvaluatedRecord` `t1`
WHERE
	`t1`.`ID` = @Id
LIMIT 2

