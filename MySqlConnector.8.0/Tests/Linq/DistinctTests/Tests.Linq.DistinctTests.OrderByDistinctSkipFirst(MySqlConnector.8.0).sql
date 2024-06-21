﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DistinctOrderByTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `DistinctOrderByTable`
(
	`Id` INT           NOT NULL,
	`F1` INT           NOT NULL,
	`F2` VARCHAR(4000)     NULL,
	`F3` INT           NOT NULL,

	CONSTRAINT `PK_DistinctOrderByTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 2

SELECT
	`t3`.`F2`
FROM
	(
		SELECT DISTINCT
			`t2`.`F1`,
			`t2`.`F2`
		FROM
			(
				SELECT
					`t1`.`F1`,
					`t1`.`F2`
				FROM
					`DistinctOrderByTable` `t1`
				ORDER BY
					`t1`.`F3` DESC
				LIMIT @skip, 9223372036854775807
			) `t2`
	) `t3`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DistinctOrderByTable`

