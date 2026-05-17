-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `KeepIdentityTest`
(
	`ID`,
	`Value`
)
VALUES
(113,200),
(123,300)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @lastId Int32
SET     @lastId = 103

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`KeepIdentityTest` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @lastId Int32
SET     @lastId = 103

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

