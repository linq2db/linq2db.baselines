BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InventoryResource`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InventoryResource`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `InventoryResource`
(
	`Id`     CHAR(36)     NOT NULL,
	`Status` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_InventoryResource` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Guid
SET     @Id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Status VarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO `InventoryResource`
(
	`Id`,
	`Status`
)
VALUES
(
	@Id,
	@Status
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InventoryResource`

