BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Isue2424Table`
(
	`Id`       INT          NOT NULL,
	`StrValue` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Isue2424Table`
(
	`Id`,
	`StrValue`
)
VALUES
(1,'1'),
(3,'3'),
(5,'5')

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 <= CASE
		WHEN `i`.`StrValue` > '4' THEN 1
		WHEN `i`.`StrValue` = '4' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '4' THEN 1
		WHEN `i`.`StrValue` = '4' THEN 0
		ELSE -1
	END >= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 >= CASE
		WHEN `i`.`StrValue` > '2' THEN 1
		WHEN `i`.`StrValue` = '2' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '2' THEN 1
		WHEN `i`.`StrValue` = '2' THEN 0
		ELSE -1
	END <= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 < CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END > 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 > CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END < 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 = CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END = 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 >= CASE
		WHEN `i`.`StrValue` > '2' THEN 1
		WHEN `i`.`StrValue` = '2' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '2' THEN 1
		WHEN `i`.`StrValue` = '2' THEN 0
		ELSE -1
	END <= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 <= CASE
		WHEN `i`.`StrValue` > '4' THEN 1
		WHEN `i`.`StrValue` = '4' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '4' THEN 1
		WHEN `i`.`StrValue` = '4' THEN 0
		ELSE -1
	END >= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 > CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END < 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 < CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '3' THEN 1
		WHEN `i`.`StrValue` = '3' THEN 0
		ELSE -1
	END > 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 <= CASE
		WHEN `i`.`StrValue` > '5' THEN 1
		WHEN `i`.`StrValue` = '5' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '5' THEN 1
		WHEN `i`.`StrValue` = '5' THEN 0
		ELSE -1
	END >= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	0 >= CASE
		WHEN `i`.`StrValue` > '1' THEN 1
		WHEN `i`.`StrValue` = '1' THEN 0
		ELSE -1
	END
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 2

SELECT
	`i`.`Id`,
	`i`.`StrValue`
FROM
	`Isue2424Table` `i`
WHERE
	CASE
		WHEN `i`.`StrValue` > '1' THEN 1
		WHEN `i`.`StrValue` = '1' THEN 0
		ELSE -1
	END <= 0
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Isue2424Table`

