BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)

