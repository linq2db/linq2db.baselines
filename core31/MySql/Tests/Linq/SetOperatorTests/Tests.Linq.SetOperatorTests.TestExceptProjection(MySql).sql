BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleData`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleData`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,

	CONSTRAINT `PK_SampleData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `SampleData`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`
)
VALUES
(1,10,100,1000),
(2,20,200,2000),
(3,30,300,3000),
(4,40,400,4000),
(5,50,500,5000),
(6,60,600,6000),
(7,70,700,7000),
(8,80,800,8000),
(9,90,900,9000),
(10,100,1000,10000)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleData`

