﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1363`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue1363`
(
	`required_field` CHAR(36) NOT NULL,
	`optional_field` CHAR(36)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Guid
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @testId Guid
SET     @testId = '00000000-0000-0000-0000-000000000000'

INSERT INTO `Issue1363`
(
	`required_field`,
	`optional_field`
)
VALUES
(
	@id,
	(
		SELECT
			`_`.`required_field`
		FROM
			`Issue1363` `_`
		WHERE
			`_`.`required_field` = @testId
	)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id Guid
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @testId Guid
SET     @testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `Issue1363`
(
	`required_field`,
	`optional_field`
)
VALUES
(
	@id,
	(
		SELECT
			`_`.`required_field`
		FROM
			`Issue1363` `_`
		WHERE
			`_`.`required_field` = @testId
	)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @id2 Guid
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	`_`.`required_field`,
	`_`.`optional_field`
FROM
	`Issue1363` `_`
WHERE
	`_`.`required_field` = @id2
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue1363`

