BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `sample_class`
(
	`id`    INT         NOT NULL,
	`value` VARCHAR(50)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `sample_class`
(
	`id`,
	`value`
)
VALUES
(1,'Str_1'),
(2,'Str_2'),
(3,'Str_3'),
(4,'Str_4'),
(5,'Str_5'),
(6,'Str_6'),
(7,'Str_7'),
(8,'Str_8'),
(9,'Str_9'),
(10,'Str_10'),
(11,'Str_11'),
(12,'Str_12'),
(13,'Str_13'),
(14,'Str_14'),
(15,'Str_15'),
(16,'Str_16'),
(17,'Str_17'),
(18,'Str_18'),
(19,'Str_19'),
(20,'Str_20')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @startId Int64
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	`s`.`value`,
	`s`.`id`
FROM
	`sample_class` `c_1`
		INNER JOIN (
			SELECT * FROM `sample_class` where `id` >= @startId and `id` < @endId
		) `s` ON `s`.`id` = `c_1`.`id`
WHERE
	`s`.`id` > 10

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @startId Int32
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	`t`.`value`,
	`t`.`id`
FROM
	`sample_class` `t`
WHERE
	`t`.`id` >= @startId AND `t`.`id` < @endId AND `t`.`id` > 10

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `sample_class`

