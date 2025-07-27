BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE FROM `test_temp`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	CAST(1 AS DECIMAL(1))
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	CAST(1 AS DECIMAL(1))
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE FROM `test_temp`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	CAST(1 AS DECIMAL(1))
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	CAST(1 AS DECIMAL(1))
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

