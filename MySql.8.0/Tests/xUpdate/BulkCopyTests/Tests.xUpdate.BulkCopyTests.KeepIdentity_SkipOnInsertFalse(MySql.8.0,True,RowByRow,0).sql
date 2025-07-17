BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @lastId Int32
SET     @lastId = 3

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` >= @lastId

