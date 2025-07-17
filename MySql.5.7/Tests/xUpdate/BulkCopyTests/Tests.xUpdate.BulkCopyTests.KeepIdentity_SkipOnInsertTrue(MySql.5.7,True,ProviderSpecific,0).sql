BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(13,200),
(23,300)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @lastId Int32
SET     @lastId = 3

SELECT
	`t1`.`ID`,
	`t1`.`intDataType`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @lastId Int32
SET     @lastId = 3

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` >= @lastId

