-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

