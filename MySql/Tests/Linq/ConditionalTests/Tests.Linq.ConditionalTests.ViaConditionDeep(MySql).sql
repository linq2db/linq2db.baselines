BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ConditionalData`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ConditionalData`
(
	`Id`         INT           NOT NULL,
	`StringProp` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConditionalData` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `ConditionalData`
(
	`Id`,
	`StringProp`
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10')

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`x_1`.`Id`,
	`x_1`.`child`,
	`x_1`.`child_1`,
	`x_1`.`StringProp_1`
FROM
	(
		SELECT
			CASE
				WHEN (`x`.`StringProp` = '1' OR `x`.`StringProp` IS NULL)
					THEN '2'
				WHEN `x`.`StringProp` = '2'
					THEN `x`.`StringProp`
				ELSE Concat(`x`.`StringProp`, '2')
			END as `StringProp`,
			CASE
				WHEN (`x`.`StringProp` = '1' OR `x`.`StringProp` IS NULL)
					THEN NULL
				WHEN `x`.`StringProp` = '2'
					THEN 1
				ELSE 2
			END as `IntProp`,
			`x`.`Id`,
			CASE
				WHEN (`x`.`StringProp` = '1' OR `x`.`StringProp` IS NULL)
					THEN 1
				ELSE 0
			END as `child`,
			`x`.`StringProp` as `child_1`,
			Concat(`x`.`StringProp`, '2') as `StringProp_1`
		FROM
			`ConditionalData` `x`
	) `x_1`
WHERE
	`x_1`.`StringProp` LIKE '%2' ESCAPE '~' AND `x_1`.`IntProp` = 2

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`StringProp`
FROM
	`ConditionalData` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ConditionalData`

