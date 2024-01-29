BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `InfeedAdvicePositionDTO`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `InfeedAdvicePositionDTO`
(
	`Id` CHAR(36) NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO `InfeedAdvicePositionDTO`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	Upper(Cast(`infeed`.`Id` as CHAR(36)))
FROM
	`InfeedAdvicePositionDTO` `infeed`
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('7F4-53', Upper(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Upper(Cast(`infeed`.`Id` as CHAR(36))) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('8F4-53', Upper(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Lower(Upper(Cast(`infeed`.`Id` as CHAR(36)))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `InfeedAdvicePositionDTO`

