BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO `TableWithGuid`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Lower(CAST(`t`.`Id` AS CHAR(36)))
FROM
	`TableWithGuid` `t`
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	LOCATE('7f4-53', Lower(CAST(`t`.`Id` AS CHAR(36)))) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	LOCATE('8f4-53', Lower(CAST(`t`.`Id` AS CHAR(36)))) > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) LIKE '293ae%' ESCAPE '~'

