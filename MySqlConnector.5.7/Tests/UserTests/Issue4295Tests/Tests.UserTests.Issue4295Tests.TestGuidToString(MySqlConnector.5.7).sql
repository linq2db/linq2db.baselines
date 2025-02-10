BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Lower(Cast(`infeed`.`Id` as CHAR(36)))
FROM
	`InfeedAdvicePositionDTO` `infeed`
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('7f4-53', Lower(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Lower(Cast(`infeed`.`Id` as CHAR(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	LOCATE('8f4-53', Lower(Cast(`infeed`.`Id` as CHAR(36)))) > 0

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`infeed`.`Id`
FROM
	`InfeedAdvicePositionDTO` `infeed`
WHERE
	Lower(Lower(Cast(`infeed`.`Id` as CHAR(36)))) LIKE '293ae%' ESCAPE '~'

