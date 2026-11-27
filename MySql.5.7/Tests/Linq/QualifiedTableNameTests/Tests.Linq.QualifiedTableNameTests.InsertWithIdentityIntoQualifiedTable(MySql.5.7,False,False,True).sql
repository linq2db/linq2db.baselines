-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `QualifiedIdTable`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	LAST_INSERT_ID() as `c1`

