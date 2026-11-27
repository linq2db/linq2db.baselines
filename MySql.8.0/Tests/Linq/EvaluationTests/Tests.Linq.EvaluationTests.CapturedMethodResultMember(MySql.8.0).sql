-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Item1 Int32
SET     @Item1 = 5

SELECT
	`t1`.`ID`
FROM
	`ClientEvaluatedRecord` `t1`
WHERE
	`t1`.`ID` = @Item1
LIMIT 2

