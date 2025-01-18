BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InventoryResource`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

