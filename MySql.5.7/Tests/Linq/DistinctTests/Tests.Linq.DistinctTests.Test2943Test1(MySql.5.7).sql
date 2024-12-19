BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DistinctOrderByTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `DistinctOrderByTable`
(
	`Id` INT           NOT NULL,
	`F1` INT           NOT NULL,
	`F2` VARCHAR(4000)     NULL,
	`F3` INT           NOT NULL,

	CONSTRAINT `PK_DistinctOrderByTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`r`.`F1`,
	`r`.`F2`
FROM
	`DistinctOrderByTable` `r`
ORDER BY
	`r`.`F1` DESC,
	`r`.`F2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DistinctOrderByTable`

