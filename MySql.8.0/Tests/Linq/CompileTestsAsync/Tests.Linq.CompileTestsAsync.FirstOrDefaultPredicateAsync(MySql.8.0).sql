BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `AsyncDataTable`
(
	`Id`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	@p,
	`c_1`.`Id`
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` = @p
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AsyncDataTable`

