BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `OrderByDistinctData`
(
	`Id`            INT          NOT NULL,
	`DuplicateData` VARCHAR(255)     NULL,
	`OrderData1`    INT          NOT NULL,
	`OrderData2`    INT          NOT NULL,

	CONSTRAINT `PK_OrderByDistinctData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `OrderByDistinctData`
(
	`Id`,
	`DuplicateData`,
	`OrderData1`,
	`OrderData2`
)
VALUES
(1,'One',1,1),
(2,'One',1,10),
(3,'One',2,2),
(4,'One',3,3),
(5,'One',4,4),
(6,'One',5,5),
(10,'Two',1,1),
(20,'Two',1,10),
(30,'Two',2,2),
(40,'Two',3,3),
(50,'Two',4,4),
(60,'Two',5,5),
(100,'Three',1,1),
(200,'Three',1,10),
(300,'Three',2,2),
(400,'Three',3,3),
(500,'Three',4,4),
(600,'Three',5,5)

BeforeExecute
-- MySql MySql.Official MySql

SELECT DISTINCT
	`x_3`.`Id`,
	`x_3`.`Id`
FROM
	(
		SELECT
			`t2`.`Id`,
			`t2`.`DuplicateData`,
			`t2`.`OrderData1`,
			`t2`.`OrderData2`
		FROM
			(
				SELECT
					`t1`.`Id`,
					`t1`.`DuplicateData`,
					`t1`.`OrderData1`,
					`t1`.`OrderData2`
				FROM
					(
						SELECT
							`x`.`Id`,
							`x`.`DuplicateData`,
							`x`.`OrderData1`,
							`x`.`OrderData2`
						FROM
							`OrderByDistinctData` `x`
						WHERE
							`x`.`Id` BETWEEN 1 AND 9
					) `t1`
				UNION ALL
				SELECT
					`x_1`.`Id`,
					`x_1`.`DuplicateData`,
					`x_1`.`OrderData1`,
					`x_1`.`OrderData2`
				FROM
					`OrderByDistinctData` `x_1`
				WHERE
					`x_1`.`Id` BETWEEN 10 AND 90
			) `t2`
		UNION
		SELECT
			`x_2`.`Id`,
			`x_2`.`DuplicateData`,
			`x_2`.`OrderData1`,
			`x_2`.`OrderData2`
		FROM
			`OrderByDistinctData` `x_2`
		WHERE
			`x_2`.`Id` BETWEEN 100 AND 900
	) `x_3`
ORDER BY
	`x_3`.`DuplicateData`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `OrderByDistinctData`

