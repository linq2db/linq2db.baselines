BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1363`
(
	`required_field` CHAR(36) NOT NULL,
	`optional_field` CHAR(36)     NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Guid
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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
			`_`.`required_field` IS NULL
	)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE `Issue1363`

