-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT LAST_INSERT_ID()

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(200),
(300)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @lastId Int32
SET     @lastId = 268

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`KeepIdentityTest` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @lastId Int32
SET     @lastId = 268

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

