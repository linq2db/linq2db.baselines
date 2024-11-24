BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DistinctOrderByTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `DistinctOrderByTable`
(
	`Id` INT           NOT NULL,
	`F1` INT           NOT NULL,
	`F2` VARCHAR(4000)     NULL,
	`F3` INT           NOT NULL,

	CONSTRAINT `PK_DistinctOrderByTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `DistinctOrderByTable`
(
	`Id`,
	`F1`,
	`F2`,
	`F3`
)
VALUES
(8,8,'8',5),
(3,3,'3',3),
(2,2,'2',1),
(6,3,'3',4),
(1,3,'3',7),
(5,5,'5',2),
(7,2,'2',8),
(4,4,'4',6)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`t2`.`F2`
FROM
	(
		SELECT DISTINCT
			`t1`.`F1`,
			`t1`.`F2`
		FROM
			`DistinctOrderByTable` `t1`
	) `t2`
ORDER BY
	`t2`.`F1`
LIMIT @skip, @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DistinctOrderByTable`

