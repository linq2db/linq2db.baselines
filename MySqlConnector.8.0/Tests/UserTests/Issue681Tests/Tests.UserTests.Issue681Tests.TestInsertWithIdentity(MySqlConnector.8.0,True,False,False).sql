-- MySqlConnector.8.0 MySql.8.0.MySqlConnector
-- Batch 1
-- Value = 10
INSERT INTO `Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
